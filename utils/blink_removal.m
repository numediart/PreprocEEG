function [EEG_no_blink,mask] = blink_removal(raw_eeg, preproc_eeg, eog_channel, check, fs, mask)

if ~isempty(eog_channel)
    cfg = [];
    cfg.channel = eog_channel;
    cfg.bpfilter = 'yes';
    cfg.bpfreq = [1 7];
    cfg.bpinstabilityfix = 'reduce';
    tmp = ft_preprocessing(cfg, preproc_eeg);
    preproc_eeg.trial{1}(end-(length(eog_channel)-1):end,:) = tmp.trial{1};
end

raw_matrix = raw_eeg.trial{1};
preproc_matrix = preproc_eeg.trial{1};

if nargin == 5
    clc;
    disp('Select EOG artifact segments')
    mask = mwf_getmask(preproc_matrix, fs);
    artf_idx = find(mask==1);
    first_artf = artf_idx(1);
    mask(1:first_artf-1) = NaN; %start the analysis from the 1st artifactual sample
elseif nargin ~= 6
    error('Incorrect number of input arguments')
end
delay = 1;
EEG_no_blink = mwf_process(raw_matrix, mask , delay); %[ clean_EEG , artifact_estimate , filter_matrix, SER, ARR, param ] = mwf_process (EEG, mask , delay )

% check = 1;
while or(check == 1, check == 3) %visual check
    raw_eeg.trial{1}(good_chan,:) = EEG_no_blink;
    % Detrending and filtering
    cfg = [];
    cfg.detrend = 'yes';
    cfg.demean = 'yes';
    cfg.dftfilter = 'yes';
    cfg.lpfilter = 'yes';
    cfg.lpfreq = 200;
    cfg.lpinstabilityfix = 'reduce';
    preproc_eeg = ft_preprocessing(cfg, raw_eeg);
    preproc_no_blink = [preproc_eeg.trial{1};preproc_matrix(end-1:end,:)];

    clc;
    disp('Check the result of blink removal and select the remaining blinking segments ')
    mask2 = mwf_getmask(preproc_no_blink, fs);
    if any(mask2)
        artf_idx = find(mask2==1);
        first_artf = artf_idx(1);
        mask2(1:first_artf-1) = NaN;
        EEG_no_blink = mwf_process(EEG_no_blink, mask2 , delay);
    else 
        check = 0;
    end
end

% EEG_no_blink = EEG_no_blink(1:end-(length(eog_channel)-1),:);
end
