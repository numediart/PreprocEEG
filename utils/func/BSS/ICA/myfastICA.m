function [Sica,Wica,WC,P_ica] = myfastICA(X,fs)
% program  by  Xueyuan Xu and Luchang Li.
% wich is an estimate of clean signals processed by the fastICA algorithm.
% Note: > X: the observation matrix of dimension [m by T].
%       > fs: sampling frequency.
        Mlags = 1;
        [numOfCV T] = size(X);
        for j = 1 : length(Mlags)
            YC = zeros(numOfCV,T,Mlags(j)+1);
            WC = cell(Mlags(j)+2, 1); % save whiten matrices for reconstruction
            [tempYC tempWC] = whiten(X',0.001);
            YC(:,:,1) = tempYC';
            WC{1,1} = tempWC;
            for i = 1 : Mlags(j)
                tempX = timedelay(X,i*1); % time lags 1.
                [tempYC tempWC] = whiten(tempX',0.001);
                YC(:,:,i+1) = tempYC';
            %     Y(:,:,i) = tempX;
                WC{i+1,1} = tempWC;
            end
                    WC{3, 1} = mean(X');
                    
        [Sica,Wica] = fastica(YC(:,:,1),'maxNumIteration',2000); 
            WC31 = WC{3, 1}';
            WC31 = WC31(:, ones(T, 1));
            Sica = Sica+Wica'*WC{1,1}'*WC31;
        [autocorr_ica H_ica] = sort(abs(diag(corr(Sica',(timedelay(Sica,1))'))),'descend');
       % construct a permutation matrix
        P_ica = zeros(length(H_ica),length(H_ica));   %  reorder
        for p = 1 : length(H_ica)
            P_ica(p,H_ica(p)) = 1;
        end
        Sica = P_ica * Sica; % resort
        end
end

