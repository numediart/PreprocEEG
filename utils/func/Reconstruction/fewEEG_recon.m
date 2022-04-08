function [Y] = fewEEG_recon(X,X_original,imfnumbermemd,fs)
% program  by  Xueyuan Xu and Luchang Li.
% fewEEG_recon generates a denoised EEG matrix Y from the X.
% Note: > X_orignal: the original observation matrix of dimension [m by T].
%       > m: sensor number.
%       > T: signal length.
%       > fs: sampling frequency.
%       > X: the Component matrix after previous denoised fuction
%       > imfnumbermemd: number of the imf processed of every channel of the original signal X.  
%       > Y: the denoised EEG signals.

            [numch sample] = size(X_original);
            for modulenumber = 1: numch
                 firstcomponent = 1 + imfnumbermemd*(modulenumber-1);
                 endcomponent = imfnumbermemd*modulenumber;
                 Y(modulenumber,:) = sum(X(firstcomponent:endcomponent,:));
            end 
end

