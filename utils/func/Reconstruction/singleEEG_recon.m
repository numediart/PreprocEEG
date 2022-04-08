function [Y] = singleEEG_recon(X,fs)
% program  by  Xueyuan Xu and Luchang Li.
% signleEEG_recon generates a denoised EEG matrix Y from the X.
% Note: > fs: sampling frequency.
%       > X: the Component matrix after previous denoised fuction
%       > Y: the denoised EEG signals.
            Y = sum(X);
end

