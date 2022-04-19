% Luca La Fisca
% ------------------------------
%  Copyright UMONS (C) 2021
%%
mfilename = 'PreprocEEG.m';
cd(fileparts(which(mfilename)))
addpath(genpath('utils'))

fname = 'config.json';
fid = fopen(fname);
raw = fread(fid,inf);
str = char(raw');
fclose(fid);
config = jsondecode(str);

fs = config.fsample;
fs_down = 512;

ext = ['.' config.datatype];

if length(config.n_subjects)>1
    subjects = config.n_subjects;
else
    subjects = 1:config.n_subjects;
end

for s = subjects
    if s >= 10
        subj_name = ['sub-0' num2str(s)];
    else
        subj_name = ['sub-00' num2str(s)];
    end
    EEGfile = fullfile(config.eeg_path, [subj_name '_' config.eeg_filename ext]);
    if strcmp(ext,'.mat')
        raw_eeg = load(EEGfile);
        raw_eeg = raw_eeg.(cell2mat(fieldnames(raw_eeg)));
    else
        cfg = [];
        cfg.dataset = EEGfile;
        raw_eeg = ft_preprocessing(cfg);
    end
    if ~isempty(config.artifact_filename)
        pseudo_artf = load(fullfile(config.artifact_path, [subj_name '_' config.artifact_filename '.mat']));
        pseudo_artf = pseudo_artf.(cell2mat(fieldnames(pseudo_artf)));
    end
    
    % Epoch data in segments of 1s to facilitate the visual rejection
    cfg = [];
    cfg.trials = 'all';
    cfg.length = 1; %epoch the data in segments of 1 sec
    cfg.overlap = 0;
    data_trial = ft_redefinetrial(cfg, raw_eeg);
    
    % Reject bad channels
    cfg = [];
    cfg.method = 'trial';
    cfg.preproc.dftfilter = 'yes';
    cfg.preproc.dftreplace = 'neighbour';
    cfg.preproc.demean = 'yes';
    cfg.preproc.lpfilter = 'yes';
    cfg.preproc.lpfreq = 100;
    tmp = ft_rejectvisual(cfg, data_trial);
    cfg = [];
    cfg.channel = tmp.label;
    raw_eeg = ft_preprocessing(cfg,raw_eeg);
    
    % Ocular artifacts rejection
    % Filtering
    cfg = [];
    cfg.detrend = 'yes';
    cfg.demean = 'yes';
    cfg.lpfilter = 'yes';
    cfg.dftfilter = 'yes';
    cfg.dftreplace = 'neighbour';
    cfg.lpfreq = 200;
    cfg.lpinstabilityfix = 'reduce';
    preproc_eeg = ft_preprocessing(cfg, raw_eeg);
    
    % EOG
    eog_channel = {'Fp1', 'Fp2','Fpz'};
    cfg = [];
    cfg.channel    = 'all';
    cfg.reref = 'yes';
    cfg.refchannel = raw_eeg.label(~ismember(raw_eeg.label,eog_channel));
    cfg.detrend = 'yes';
    cfg.bpfilter = 'yes';
    cfg.bpfiltord = 5;
    cfg.bpfreq = [1 7];     % Filtering suggested by specific litterature (Gasser et al., 1985)
    cfg.bpinstabilityfix = 'reduce';
    eog = ft_preprocessing(cfg,preproc_eeg);
    % horizontal movements
    cfg = [];
    cfg.channel    = eog_channel(1:2);
    cfg.reref = 'yes';
    cfg.refchannel = eog_channel(1);
    eog_h = ft_preprocessing(cfg,eog);
    % select only the non-ref channel
    cfg = [];
    cfg.channel = eog_channel(2);
    eog_h = ft_selectdata(cfg,eog_h);
    % vertical movements
    cfg = [];
    cfg.channel = eog_channel;
    cfg.avgoverchan = 'yes';
    eog_v = ft_selectdata(cfg,eog);
    
    % remove EOG artifacts
    if ~isempty(config.artifact_filename)
        check = 0;
        mask = zeros(1,length(raw_eeg.trial{1}));
        eyem_idx = find(strcmp(pseudo_artf{1}.type,'eyem'));
        for i = 1:min([10,length(eyem_idx)])
            start_idx = pseudo_artf{1}.sample(eyem_idx(i));
            dur = fs/artf_template.fsample*length(cell2mat(artf_template.artf.eyem(pseudo_artf{1}.index(eyem_idx(i))-length(artf_template.artf.elec))));
            mask(start_idx:start_idx+dur) = 1;
        end
        close all;
        no_blink_eeg = blink_removal(raw_eeg, preproc_eeg, eog_channel, check, fs, mask);
    else
        [no_blink_eeg,mask] = blink_removal(raw_eeg, preproc_eeg, eog_channel, check, fs);
    end
        
    
    % Detrending and filtering
    trial_eeg = raw_eeg;
    trial_eeg.trial{1} = no_blink_eeg;
    cfg = [];
    cfg.detrend = 'yes';
    cfg.demean = 'yes';
    cfg.lpfilter = 'yes';
    cfg.lpfreq = 200;
    cfg.lpinstabilityfix = 'reduce';
    trial_eeg = ft_preprocessing(cfg, trial_eeg);
    
    if ~isempty(config.event)
        for i = 1:n_trial
            trial_eeg.time{i} = 0:1/fs:config.pseudo_length-1/fs;
            trial_eeg.trial{i} = eeg.trial{1}(:,event(s,i):event(s,i)+config.pseudo_length*fs-1);
        end
    else
        eventvalue = str2num(cell2mat(regexp(config.eventvalue,'\d*','Match')'))';
        cfg = [];
        cfg.dataset = EEGfile;
        cfg.trialdef.eventtype  = config.eventtype;
        cfg.trialdef.eventvalue = eventvalue;
        cfg.trialdef.prestim    = config.prestim;
        cfg.trialdef.poststim   = config.poststim;
        cfg = ft_definetrial(cfg);
        trial_eeg = ft_redefinetrial(cfg,trial_eeg);
    end

    % downsample
    cfg = [];
    cfg.resamplefs = fs_down;
    eeg = ft_resampledata(cfg,trial_eeg);

    % EEMD-CCA
    eeg.trialinfo.condition = ones(n_trial,1);
    TARGET_COND = 1;
    check = 0;
    clean_eeg = EEMD_CCA(eeg,TARGET_COND, check, fs_down);

    % Baseline correction
    if length(clean_eeg.trial) > 1 %segmented data
        cfg = [];
        cfg.demean = 'yes';
        cfg.detrend = 'yes';
        if config.prestim > 0.3 %use prestim signal for the correction
            cfg.baselinewindow = [-config.prestim -0.2];
        else %if not enough signal before stimulus onset, use late signal
            cfg.baselinewindow = [config.poststim-0.1*(config.poststim+config.prestim) config.poststim];
        end
        eeg = ft_preprocessing(cfg, clean_eeg);
    end

    % Re-referencing to average
    cfg = [];
    cfg.reref = 'yes';
    cfg.refchannel = 'all'; %average reference = best for source reconstruction
    eeg = ft_preprocessing(cfg,eeg);
    
    save(fullfile(fileparts(which(mfilename)),'preprocessed_data',[subj_name '_task-test_preprocessed' '.mat']), 'eeg')
end