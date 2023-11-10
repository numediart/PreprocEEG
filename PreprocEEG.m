function [multi_timelock] = PreprocEEG(config_file)
%{
Created by Luca La Fisca
ISIA Lab, Faculty of Engineering University of Mons, Mons (Belgium)
luca.lafisca@umons.ac.be
Source: La Fisca et al, "Explainable AI for EEG Biomarkers Identification in Obstructive Sleep Apnea Severity Scoring Task", NER 2023.
Copyright (C) 2023 - UMons
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.
This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.
You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
This library cannot be used for commercial use without the agreement of the
author (Luca La Fisca).
%}

%read config file
fname = config_file;
fid = fopen(fname);
raw = fread(fid,inf);
str = char(raw');
fclose(fid);
config = jsondecode(str);

BIDS_FOLDER = config.eeg_path;
ext = ['.' config.datatype];
save_choice = config.save_choice;
check = config.check_steps;
fs = config.fs;
fs_down = config.fs_down;
TARGET_COND = config.target_conditions(1):config.target_conditions(end);
% save_choice = 1;
% to_show = 1;
global EEG_FILE
dinfo = dir(fullfile(BIDS_FOLDER,'sub-*'));
subj = {dinfo.name};
%%

for subj_name = drange(subj)
    subj_ID = str2double(subj_name{1}(5:end));
    if subj_ID >= 10
        subfolder = 'sub-0%d';
    else
        subfolder = 'sub-00%d';
    end
    dinfo = dir(fullfile(BIDS_FOLDER,sprintf(subfolder,subj_ID),'eeg',['*',ext]));
    EEG_FILE = fullfile(BIDS_FOLDER,sprintf(subfolder,subj_ID),'eeg', dinfo.name);
    
    clc;
    disp(EEG_FILE)

    % Read EEG / EOG channels
    % EEG
    tic
    cfg = [];
    cfg.dataset = EEG_FILE;
%     cfg.channel    = 'eeg';
    cfg.reref = 'no';
    cfg.detrend = 'no';
    cfg.demean = 'no';
    raw_eeg = ft_preprocessing(cfg);
    toc
    
    
    % Reject bad channel by visual inspection
    cfg = [];
    cfg.dataset = EEG_FILE;
    cfg.trialdef.triallength = 2; %epoch the data in segments of 2 sec
    cfg.trialdef.ntrials = 16;
    cfg = ft_definetrial(cfg);
    data_channel_rejection = ft_redefinetrial(cfg, raw_eeg);
   
    % Reject bad trials by visual inspection
    cfg                     = [];
    cfg.dataset             = EEG_FILE;
    cfg.root                = BIDS_FOLDER;
    cfg.trialdef.eventtype  = config.trialdef_eventtype;
    cfg.trialfun            = config.trial_function;
    cfg.trialdef.eventvalue = config.trialdef_eventvalue;
    cfg.trialdef.prestim    = config.trialdef_prestim;
    cfg.trialdef.poststim   = config.trialdef_poststim; %Note: the minimal time between the target appearance and the next primer is 2s
    cfg = ft_definetrial(cfg);
    data_trial_rejection = ft_redefinetrial(cfg, raw_eeg);
    
    cfg = [];
    cfg.method = 'channel';
    cfg.preproc.dftfilter = 'yes';
    cfg.preproc.dftreplace = 'neighbour';
    cfg.preproc.demean = 'yes';
    cfg.preproc.lpfilter = 'yes';
    cfg.preproc.lpfreq = 100;
    cfg.channel = 'eeg';
    tmp = ft_rejectvisual(cfg, data_channel_rejection);
    cfg_chan = [];
    cfg_chan.channel = tmp.label;
    raw_eeg = ft_preprocessing(cfg_chan,raw_eeg);
    
    cfg.method = 'trial';
    cfg.channel = raw_eeg.label(1:length(raw_eeg.label)/4:length(raw_eeg.label));
    tmp = ft_rejectvisual(cfg, data_trial_rejection);
    samples_to_reject = tmp.cfg.artfctdef.trial.artifact;
    
    if save_choice == 1
        output_folder = fullfile(BIDS_FOLDER,'derivatives',sprintf(subfolder,subj_ID),'eeg');
        output_name = [dinfo.name(1:end-7) 'raw-eeg.mat'];
        if ~ exist(output_folder, 'dir')
            mkdir(output_folder);
            addpath(output_folder);
        end
        save(fullfile(output_folder,output_name),'raw_eeg')
    end
end

%% Ocular artifact rejection
clc;
% % check = input('Do you want to check ocular correction? Yes(1), No(0) ');

for subj_name = drange(subj)
    subj_ID = str2double(subj_name{1}(5:end));
    if subj_ID >= 10
        subfolder = 'sub-0%d';
    else
        subfolder = 'sub-00%d';
    end
    dinfo = dir(fullfile(BIDS_FOLDER,sprintf(subfolder,subj_ID),'eeg',['*',ext]));

    % Load raw data (raw_eeg)
    load(fullfile(BIDS_FOLDER,'derivatives',sprintf(subfolder,subj_ID),'eeg',[dinfo.name(1:end-7) 'raw-eeg.mat']))
    
    % Filtering
    cfg = [];
    cfg.detrend = 'yes';
    cfg.demean = 'yes';
    cfg.lpfilter = 'yes';
    cfg.dftfilter = 'yes';
    cfg.dftreplace = 'neighbour';
    cfg.lpfreq = config.lowpass_freq;
    cfg.lpinstabilityfix = 'reduce';
    preproc_eeg = ft_preprocessing(cfg, raw_eeg);

    % EOG
%     eog_channel = {'EXG2', 'EXG3', 'EXG4', 'Fp2'}; %[66,67,68,34]
    eog_channel = split(config.eog_channels,',');
    % EOG horizontal
    cfg = [];
    cfg.dataset = EEG_FILE;
    cfg.channel    = eog_channel(1:2);
    cfg.reref = 'yes';
    cfg.refchannel = eog_channel(1);
    cfg.detrend = 'yes';
    cfg.bpfilter = 'yes';
    cfg.bpfiltord = 5;
    cfg.bpfreq = [1 7];     % Filtering suggested by specific litterature (Gasser et al., 1985)
    cfg.bpinstabilityfix = 'reduce';
    eog_h = ft_preprocessing(cfg);
    % select only the non-ref channel
    cfg = [];
    cfg.channel = eog_channel(2);
    eog_h = ft_selectdata(cfg,eog_h);
    eog_h.label{1} = 'EOGH';
    eog_h.cfg.channel{1} = eog_h.label{1};

    % EOG vertical
    cfg = [];
    cfg.dataset = EEG_FILE;
    cfg.channel    = eog_channel(3:4);
    cfg.reref = 'yes';
    cfg.refchannel = eog_channel(3);
    cfg.detrend = 'yes';
    cfg.bpfilter = 'yes';
    cfg.bpfiltord = 5;
    cfg.bpfreq = [1 7];     % Filtering suggested by specific litterature (Gasser et al., 1985)
    cfg.bpinstabilityfix = 'reduce';
    eog_v = ft_preprocessing(cfg);
    % select only the non-ref channel
    cfg = [];
    cfg.channel = eog_channel(4);
    eog_v = ft_selectdata(cfg,eog_v);
    eog_v.label{1} = 'EOGV';
    eog_v.cfg.channel{1} = eog_v.label{1};
    % merge all data
    cfg = [];
    preproc_eeg = ft_appenddata(cfg, preproc_eeg, eog_h, eog_v);
    clear('eeg_data', 'eog_h', 'eog_v')
    eog_channel = {'EOGH', 'EOGV'};
    
%     default parameters
%     eog_channel = {'EOGH', 'EOGV'};
%     check = 0;
    clc;

    no_blink_eeg = blink_removal(raw_eeg, preproc_eeg, eog_channel, check, fs);
    
    if save_choice == 1
        output_folder = fullfile(BIDS_FOLDER,'derivatives',sprintf(subfolder,subj_ID),'eeg');
        output_name = [dinfo.name(1:end-7) 'no-blink-eeg.mat'];
        if ~ exist(output_folder, 'dir')
            mkdir(output_folder);
            addpath(output_folder);
        end
        save(fullfile(output_folder,output_name),'no_blink_eeg')
    end
end

%% Low correlation sources rejection
multi_timelock = cell(str2double(subj{end}(end-2:end)),max(TARGET_COND));

% load(fullfile(PATH_TO_SAVED_MAT,'EEG','multi_timelock.mat'));

% check = input(['Do you want to check EEMD-CCA result?\n ',...
%     '(0) No\n (1) Yes, visual validation only\n (2) Yes, ICA validation only\n (3) Yes, both\n']);
% 
% to_show = input('Display timelock for each subject? Yes(1), No(0) ');

for subj_name = drange(subj)
    subj_ID = str2double(subj_name{1}(5:end));
%     if subj_ID < 10
%         continue
%     elseif subj_ID > 30
%         break;
%     end
    if subj_ID >= 10
        subfolder = 'sub-0%d';
    else
        subfolder = 'sub-00%d';
    end
    dinfo = dir(fullfile(BIDS_FOLDER,sprintf(subfolder,subj_ID),'eeg',['*',ext]));
    EEG_FILE = fullfile(BIDS_FOLDER,sprintf(subfolder,subj_ID),'eeg', dinfo.name);
    
    clc;
    disp(EEG_FILE)

    % Load raw data (raw_eeg) structure and replace trial by the EEG without blink (no_blink_eeg)
    raw_eeg = load(fullfile(BIDS_FOLDER,sprintf(subfolder,subj_ID),'eeg',[dinfo.name(1:end-7) 'raw-eeg.mat']));
    raw_eeg = raw_eeg.(cell2mat(fieldnames(raw_eeg)));
    cfg = [];
    cfg.channel = 1:config.eeg_elec_number;
    raw_eeg = ft_preprocessing(cfg,raw_eeg);
    no_blink_eeg = load(fullfile(BIDS_FOLDER,sprintf(subfolder,subj_ID),'eeg',[dinfo.name(1:end-7) 'no-blink-eeg.mat']));
    no_blink_eeg = no_blink_eeg.(cell2mat(fieldnames(no_blink_eeg)));
    raw_eeg.trial{1} = no_blink_eeg;
    
    % Detrending and filtering    
    cfg = [];
    cfg.detrend = 'yes';
    cfg.demean = 'yes';
    cfg.lpfilter = 'yes';
    cfg.lpfreq = config.lowpass_freq;
    cfg.lpinstabilityfix = 'reduce';
    data_trial = ft_preprocessing(cfg, raw_eeg);

    
    % Define the trials
    cfg                     = [];
    cfg.dataset             = EEG_FILE;
    cfg.root                = BIDS_FOLDER;
    cfg.trialdef.eventtype  = config.trialdef_eventtype;
    cfg.trialfun            = config.trial_function;
    cfg.trialdef.eventvalue = config.trialdef_eventvalue;
    cfg.trialdef.prestim    = config.trialdef_prestim;
    cfg.trialdef.poststim   = config.trialdef_poststim; %Note: the minimal time between the target appearance and the next primer is 2s
    cfg = ft_definetrial(cfg);
    data_trial = ft_redefinetrial(cfg, data_trial);
    
    % downsample
    cfg = [];
    cfg.resamplefs = fs_down;
    data_trial = ft_resampledata(cfg,data_trial);

    % EEMD-CCA
    clean_eeg = EEMD_CCA(data_trial,config);

    % Baseline correction
    if length(clean_eeg.trial) > 1 %segmented data
        cfg = [];
        cfg.demean = 'yes';
        cfg.detrend = 'yes';
        cfg.baselinewindow = [-0.5, -0.2]; %Note: minimum 1.6s between the answer and the next primer
        eeg = ft_preprocessing(cfg, clean_eeg);
    end

    % Re-referencing to average
    cfg = [];
    cfg.reref = 'yes';
    cfg.refchannel = 'all'; %average reference = best for source reconstruction
    eeg = ft_preprocessing(cfg,eeg);

    % timelock analysis
    if config.timelock_analysis
        timelock = cell(1,max(clean_eeg.trialinfo.condition));
        for i = 1:max(clean_eeg.trialinfo.condition)
            cfg = [];
            cfg.trials = find(clean_eeg.trialinfo.condition==i)';
            cfg.covariance = 'yes';
            timelock{i} = ft_timelockanalysis(cfg, clean_eeg);
            multi_timelock{subj_ID,i} = timelock{i};
        end

        % check timelock
        target_channel = 'Pz';
        to_show = config.check_timelock;
        while to_show == 1
            figure()
            cfg = [];
            cfg.xlim = [-0.5 1];
            % cfg.channel = ['P7', 'FT7', 'T7', 'TP7', 'FT8', 'T8', 'TP8'];
            cfg.channel = target_channel;
            ft_singleplotER(cfg,timelock)
            title(['subject number: ', num2str(subj_ID), ' / channel: ', target_channel])
    %         title(['event number: ', num2str(current_event), ' / channel: ', target_channel])

            to_show = input('Show another channel? Yes(1), No(0) ');
    %             to_show = 0;
            if to_show == 1
                target_channel = input('Which channel? ', 's');
            end
        end

        if save_choice == 1
            output_folder = fullfile(BIDS_FOLDER,sprintf(subfolder,subj_ID),'eeg');
            output_name = [dinfo.name(1:end-3) 'mat'];
            if ~ exist(output_folder, 'dir')
                mkdir(output_folder);
                addpath(output_folder);
            end
            save(fullfile(output_folder,output_name),'eeg')
            save(fullfile(output_folder,[dinfo.name(1:end-7) 'timelock.mat']),'multi_timelock')
        end
    end

    close all
end

clc;
disp('DONE')

end