function [Comp_save,F,WC,P_iva] = myIVA(X,fs,tlag)
% program  by  Xueyuan Xu and Luchang Li.
% [Y,W] = myIVA(X,fs,tlag) produces a matrix Y of dimension [m by T] 
% which is an estimate of clean signals processed by the IVA algorithm and a demixing matrix W.
% Note: > X: the observation matrix of dimension [m by T].
%       > m: sensor number.
%       > T: signal length.
%       > WC: demixing matrix.
% REFERENCES:
% X. Chen, H. Peng, F. Yu, and K. Wang, ¡°Independent vector analysis
% applied to remove muscle artifacts in eeg data,¡± IEEE Transactions on
% Instrumentation and Measurement, vol. 66, no. 7, pp. 1770¨C1779, July
% 2017.

        Mlags = 1;
        [numOfCV T] = size(X);
        for j = 1 : length(Mlags)
            YC = zeros(numOfCV,T,Mlags(j)+1);
            WC = cell(Mlags(j)+2, 1); % save whiten matrices for reconstruction
            [tempYC tempWC] = whiten(X',0.001);
            YC(:,:,1) = tempYC';
            WC{1,1} = tempWC;
            for i = 1 : Mlags(j)
                tempX = timedelay(X,i*tlag); % time lags 1.
                [tempYC tempWC] = whiten(tempX',0.001);
                YC(:,:,i+1) = tempYC';
            %     Y(:,:,i) = tempX;
                WC{i+1,1} = tempWC;
            end
                WC{3,1} = mean(X');
         F = zeros(numOfCV,numOfCV,Mlags(j)+1);
         F = iva_second_order(YC, 'complex_valued',true);
         F = iva_laplace_decp(YC,'initW',F);
            Comp = cell(Mlags(j)+1, 1);
            for i = 1 : Mlags(j)+1
                Comp{i,1} = F(:,:,i)*YC(:,:,i);
            end
                       WC31 = WC{3, 1}';
           WC31 = WC31(:, ones(T, 1));
           for i = 1 : Mlags(j)+1
                Comp{i,1} = Comp{i,1}+F(:,:,i)*WC{1,1}'*WC31;
           end 
 % construct a permutation matrix
        [autocorr_iva H_iva] = sort(abs(diag(corr(Comp{1,1}',(timedelay(Comp{1,1},1))'))),'descend');
        % construct a permutation matrix
        P_iva = zeros(length(H_iva),length(H_iva));
        for p = 1 : length(H_iva)
            P_iva(p,H_iva(p)) = 1;
        end
        Comp{1,1} = P_iva*Comp{1,1}; % resort   
        
        % Reconstruction
        Comp_save = Comp{1,1};
 
end

