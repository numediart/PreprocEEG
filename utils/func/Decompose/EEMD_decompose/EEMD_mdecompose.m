function [Y,Imfnumber] = EEMD_mdecompose(X,NoiseLevel,NE,fs,numImf)
% program  by  Xueyuan Xu and Luchang Li.
% EEMD_mdecompose generates a IMF matrix Y from the original series X
% using emsemble empirical mode decomposition.
% Note: > X: the observation matrix of dimension [m by T].
%       > m: sensor number.
%       > T: signal length.
%       > fs: sampling frequency.
%       > NoiseLevel: noise level
%       > NE: ensemble number
%       > numImf: number of prescribed imf; if it is less than zero,it will be log2(T).  
%       > Imfnumber: the value of numImf plus one.
%       > Y: returned imfs.
% REFERENCES:
% [1] Z. Wu and N. E. Huang, "Ensemble Empirical Mode Decomposition: A
%     Noise-Assisted Data Analysis Method," Advances in Adaptive Data Analysis, vol. 1, pp. 1-41, 2009.
% [2] B. Mijovi?c, M. De Vos, I. Gligorijevi?c, J. Taelman, and
%     S. Van Huffel, ¡°Source separation from single-channel recordings by
%     combining empirical-mode decomposition and independent component
%     analysis,¡± IEEE Trans. Biomed. Eng., vol. 57, no. 9, pp. 2188¨C2196,
%     Sep. 2010.
% [3] X. Chen, A. Liu, M. J. McKeown, H. Poizner, and Z. J. Wang,
%    ¡°An EEMD-IVA framework for concurrent multidimensional EEG and
%     unidimensional kinematic data analysis,¡± IEEE Trans. Biomed. Eng.,
%     vol. 61, no. 7, pp. 2187¨C2198, Jul. 2014
% [4] K. T. Sweeney, S. F. McLoone, and T. E. Ward, ¡°The use of ensemble
%     empirical mode decomposition with canonical correlation analysis as a
%     novel artifact removal technique,¡± IEEE Trans. Biomed. Eng., vol. 60,
%     no. 1, pp. 97¨C105, Jan. 2013

[numch,sample] = size(X);
% imfnumber = fix(log2(sample));
Y = [];
        for nch = 1 : numch
        sigma = NoiseLevel;  
        allmode = rcada_eemd(X(nch,:),sigma,NE,numImf);
        [imfnumber,l] = size(allmode);
        R(nch,:) = X(nch,:)-sum(allmode);  % % residue
        Imfnumber = imfnumber + 1;
        allmode(Imfnumber,:) = R(nch,:);
        X_imfnch = allmode;
        Y = cat(1,Y,X_imfnch);
        end
end

