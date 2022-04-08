PATH_TO_EEG_PROCESSING = 'C:\Users\luca-\OneDrive - UMONS\_PhD\_Matlab\EEG Processing'; %Windows
PATH_TO_ARTIFACT_REMOVAL = 'C:\Users\luca-\OneDrive - UMONS\_PhD\_Matlab\Artifact Reduction'; %artifact_removal function
PATH_TO_MWF = 'D:\__EOG artifact correction\MWF-artifact-removal'; %Multi-channel Wiener Filter toolbox (remove ocular artifacts)
PATH_TO_LINE_NOISE = 'C:\Users\luca-\OneDrive - UMONS\_PhD\_Matlab\Artifact Reduction\NoiseTools'; %nt_zapline function to remove line noise

addpath(PATH_TO_EEG_PROCESSING);
addpath(PATH_TO_ARTIFACT_REMOVAL);
addpath(genpath(PATH_TO_MWF));
addpath(genpath(PATH_TO_LINE_NOISE));

fs = config.fsample;
fs_down = 512;

for s = 1:n_sess
    eeg = load(['C:\Users\luca-\OneDrive - UMONS\_PhD\_Matlab\Validation\Validation-Framework-Source-Reconstruction\pseudo_eeg\test_session_' num2str(s) '.mat']);
    eeg = eeg.(cell2mat(fieldnames(eeg)));
    load(['C:\Users\luca-\OneDrive - UMONS\_PhD\_Matlab\Validation\Validation-Framework-Source-Reconstruction\pseudo_data\test_artifact_' num2str(s) '.mat']);
    
    trial_eeg = eeg;
    for i = 1:n_trial
        trial_eeg.time{i} = 0:1/fs:config.pseudo_length-1/fs;
        trial_eeg.trial{i} = eeg.trial{1}(:,event(s,i):event(s,i)+config.pseudo_length*fs-1);
    end
    
    % Filtering
    cfg = [];
    cfg.detrend = 'yes';
    cfg.demean = 'yes';
    cfg.lpfilter = 'yes';
    cfg.dftfilter = 'yes';
    cfg.dftreplace = 'neighbour';
    cfg.lpfreq = 200;
    cfg.lpinstabilityfix = 'reduce';
    preproc_eeg = ft_preprocessing(cfg, eeg);
    
    % EOG
    eog_channel = {'Fp1', 'Fp2','Fpz'};
    cfg = [];
    cfg.channel    = 'all';
    cfg.reref = 'yes';
    cfg.refchannel = eeg.label(~ismember(eeg.label,eog_channel));
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
    check = 0;
    mask = zeros(1,length(eeg.trial{1}));
    eyem_idx = find(strcmp(pseudo_artf{1}.type,'eyem'));
    for i = 1:min([10,length(eyem_idx)])
        start_idx = pseudo_artf{1}.sample(eyem_idx(i));
        dur = fs/artf_template.fsample*length(cell2mat(artf_template.artf.eyem(pseudo_artf{1}.index(eyem_idx(i))-length(artf_template.artf.elec))));
        mask(start_idx:start_idx+dur) = 1;
    end
    close all;
    no_blink_eeg = blink_removal(eeg, preproc_eeg, eog_channel, check, fs, mask);
    
    % Detrending and filtering
    cfg = [];
    cfg.detrend = 'yes';
    cfg.demean = 'yes';
    cfg.lpfilter = 'yes';
    cfg.lpfreq = 200;
    cfg.lpinstabilityfix = 'reduce';
    trial_eeg = ft_preprocessing(cfg, eeg);
    trial_eeg.trial{1} = no_blink_eeg;
    
    trial_eeg = eeg;
    for i = 1:n_trial
        trial_eeg.time{i} = 0:1/fs:config.pseudo_length-1/fs;
        trial_eeg.trial{i} = eeg.trial{1}(:,event(s,i):event(s,i)+config.pseudo_length*fs-1);
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
        cfg.baselinewindow = [0.8 1];
        eeg = ft_preprocessing(cfg, clean_eeg);
    end

    % Re-referencing to average
    cfg = [];
    cfg.reref = 'yes';
    cfg.refchannel = 'all'; %average reference = best for source reconstruction
    eeg = ft_preprocessing(cfg,eeg);
    
    save(['C:\Users\luca-\OneDrive - UMONS\_PhD\_Matlab\Validation\Preproceesed_eeg\test_eeg_processed_' num2str(s) '.mat'], 'eeg')
end