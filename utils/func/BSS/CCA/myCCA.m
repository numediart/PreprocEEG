function [Comp_save, B,W ] = myCCA(X,fs,tlag)
%  % program  by  Xueyuan Xu and Luchang Li.
% [Comp, B,W ] = myCCA(X,fs£¬ tlag) produces a matrix Comp of dimension [m by T] 
% which is an estimate of clean signals processed by the CCA algorithm.
% Note: > X: the observation matrix of dimension [m by T].
%       > m: sensor number.
%       > T: signal length.
%       > threshold: the autocorrelation of independent vectors below the threshold are judged as noise-related components
%       > W: demixing matrix.
 Mlags = 1;
[numOfCV, T] = size(X);
for j = 1: length(Mlags)
    Y = zeros(numOfCV, T, Mlags(j)+1);
    W = cell(Mlags(j)+2, 1); % save whiten matrices for reconstruction
    [tempY, tempW] = whiten(X', 0.001);
    Y(:,:,1) = tempY';
    W{1,1} = tempW;
    for i = 1: Mlags(j)
        tempX = timedelay(X, i*tlag); % time lags i.
        [tempY, tempW] = whiten(tempX', 0.001);
        Y(:, :, i+1) = tempY';
        W{i+1, 1} = tempW;
    end
        W{3, 1} = mean(X');
    % CCA
    [Wx, Wy, r] = cca(squeeze(Y(:,:,1)), squeeze(Y(:,:,2)));
    B(:, :, 1) = Wx';
    B(:, :, 2) = Wy';
    Comp = cell(Mlags(j)+1, 1);
    for i = 1: (Mlags(j)+1)
        Comp{i, 1} = B(:, :, i)*Y(:, :, i);
    end
           W31 = W{3, 1}';
           W31 = W31(:, ones(T, 1));
           for i = 1 : Mlags(j)+1
                Comp{i,1} = Comp{i,1}+B(:, :, i)*W{1,1}'*W31;
           end 
    Comp_save = Comp{1, 1};
end    