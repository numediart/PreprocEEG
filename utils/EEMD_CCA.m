function clean_eeg = EEMD_CCA(data_trial,TARGET_COND,check,fs)
%default values
NE=100;
NoiseLevel=0.2;
% fs=512;
numImf=-1;
ACthreshold1 = 0.9; %Autocorrelation threshold to select noisy IMFs
tlag = 1; %time lag for CCA
ACthreshold2 = 0.5; %Autocorrelation threshold to select artifact components

clean_eeg = data_trial;

all_clean_segments = [];
all_raw_segments = [];

%Compute EEMD-CCA for trial of interest
sel = find(ismember(data_trial.trialinfo.condition,TARGET_COND))';
for i = sel
    clc;
    fprintf('EEMD-CCA is running... \n')
    fprintf('Trial %d \n',i)
    X_original = data_trial.trial{i};
    
    % remove power line noise
    FLINE=50/fs; % line frequency
    NREMOVE=3; % number of components to remove
    [X_original,~] = nt_zapline(X_original,FLINE,NREMOVE);
    
    [X_imf, componumber] = EEMD_mdecompose(X_original,NoiseLevel,NE,fs,numImf);
    [noisy_imf, X_imfchosen] = choose_compo(X_imf,0,ACthreshold1,0,0,0,0,0,0);
    [X_comp, B, W] = myCCA(noisy_imf,fs,tlag);
    target_comp = CCA_threshold(X_comp, B, W, 0, ACthreshold2,0,0,0,0,0,0);
    clean_eeg.trial{i} = multiEEG_recon(target_comp,X_imfchosen,X_original,componumber,fs);
    clean_eeg.trial{i} = real(clean_eeg.trial{i});
    
    all_raw_segments = [all_raw_segments zeros(size(X_original,1),ceil(fs/10)) X_original];
    all_clean_segments = [all_clean_segments zeros(size(clean_eeg.trial{i},1),ceil(fs/10)) clean_eeg.trial{i}];
    close all;
end
clc;

if or(check == 1, check ==3) %visual check
    disp('Visual check')
    disp('Before EEMD-CCA')
    mwf_getmask(all_raw_segments, fs);
    clc;
    disp('Visual check')
    disp('After EEMD-CCA')
    mwf_getmask(all_clean_segments, fs);
end

if or(check == 2, check ==3) %ICA check
    cfg        = [];
    cfg.method = 'runica'; % this is the default and uses the implementation from EEGLAB
    comp = ft_componentanalysis(cfg, clean_eeg);

    cfg = [];
    cfg.layout = 'biosemi64.lay'; % specify the layout file that should be used for plotting
    cfg.viewmode = 'component';
    ft_databrowser(cfg, comp)
    
    clc;
    remove = input('Do you want to remove components? (Y,N)', 's');
    if or(remove == 'y', remove == 'Y')
        sel_comp = input('component to remove: [comp1, comp2, ...] ');
        cfg=[];
        cfg.component = sel_comp; % note the exact numbers will vary per run
        clean_eeg= ft_rejectcomponent(cfg, comp);
    end
end
end

