function [Y,wcnumber] = wavelet_decompose(X,WL,WB,fs)
% program  by  Xueyuan Xu and Luchang Li.
% wavelet_decompose generates a wavelet component matrix Y from the original series X
% using Wavelet Decomposition.
% Note: > X: the observation matrix of dimension [m by T].
%       > m: sensor number.
%       > T: signal length.
%       > fs: sampling frequency.
%       > WL: wavelet layer
%       > WB: wavelet basis
%       > wcnumber: the number of wavelet components.
% REFERENCES:
%  [1] J. Lin and A. Zhang, ¡°Fault feature separation using wavelet-ICA filter,¡±
%      NDT E Int., vol. 38, no. 6, pp. 421¨C427, 2005.
%  [2] N. Mammone, F. La Foresta, and F. C. Morabito, ¡°Automatic artifact
%      rejection from multichannel scalp EEG by wavelet ICA,¡± IEEE Sensors J., vol. 12, no. 3, pp. 533¨C542, Mar. 2012.

[numch,sample] = size(X);
Y = [];
      for nch = 1 : numch
       wcnumber = WL+1;
       wc = zeros(wcnumber,sample);
       [d,a]=wavedec(X(nch,:),WL,WB);
       wc(1,:)=wrcoef('a',d,a,WB,WL);
       for i = 2 : WL
           ic = i-1;
       wc(i,:)=wrcoef('d',d,a,WB,ic);
       Xn = wc;
       Rn = X(nch,:)-sum(Xn);
       Xn(wcnumber,:) = Rn;
       end  
       Y = cat(1,Y,Xn);
      end
end
