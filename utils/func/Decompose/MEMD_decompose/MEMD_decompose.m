function [Y,imfnumbermemd] = MEMD_decompose(X,NoiseChannel,fs)
% program  by  Xueyuan Xu and Luchang Li.
% MEMD_decompose generates a IMF matrix Y from the original series X
% using multivariate empirical mode decomposition.
% Note: > X: the observation matrix of dimension [m by T].
%       > m: sensor number.
%       > T: signal length.
%       > fs: sampling frequency. 
%       > NoiseChannel: the number of added white Gaussian noise channels.
%       > imfnumbermemd: the number of IMFs of each channel decomposed by MEMD.
%       > Y: returned imfs.
% REFERENCES:
% [1] N. ur Rehman and D. P. Mandic, ※Multivariate empirical mode decomposition,§ 
% Proc. R. Soc. Lond. A, Math. Phys. Eng. Sci., vol. 466, no. 2117,
% pp. 1291每1302, 2009.
% [2] C. Park, D. Looney, N. ur Rehman, A. Ahrabian, and D. P. Mandic,
% ※Classification of motor imagery BCI using multivariate empirical mode
% decomposition,§ IEEE Trans. Neural Syst. Rehabil. Eng., vol. 21, no. 1,
% pp. 10每22, Jan. 2013.
% [3] S. Tavildar and A. Ashrafi, ※Application of multivariate empirical
% mode decomposition and canonical correlation analysis for EEG motion
% artifact removal,§ in Proc. Conf. Adv. Signal Process. (CASP), Jun. 2016,
% pp. 150每154.
% [4] G. Wang, C. Teng, K. Li, Z. Zhang, and X. Yan, ※The removal of EOG
% artifacts from EEG signals using independent component analysis and
% multivariate empirical mode decomposition,§ IEEE J. Biomed. Health
% Inform., vol. 20, no. 5, pp. 1301每1308, Sep. 2016.

[numch,sample] = size(X);
imfnumber = fix(log2(sample));
      XX = [X;randn(NoiseChannel,sample)];
      imf = memd(XX);
      imfallmemd = size(imf,1) - NoiseChannel;
      imfnumbermemd = size(imf,2);
      Y = zeros(imfallmemd*imfnumbermemd,sample);
       for modulenumber = 1: imfallmemd
           XXX = squeeze(imf(modulenumber,:,:));
           firstimf = 1 + imfnumbermemd*(modulenumber-1);
           endimf = imfnumbermemd*modulenumber;
           Y(firstimf:endimf,:) = XXX;
       end
end

