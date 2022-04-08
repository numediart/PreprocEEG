function [Y] = SSA_decompose(X,L,ncomps,fs)
% program  by  Xueyuan Xu and Luchang Li.
% SSA_decompose generates a component matrix Y from the original series X
% using Singular Value Decomposition.
% Note: > X: the observation matrix of dimension [m by T].
%       > m: sensor number.
%       > T: signal length.
%       > fs: sampling frequency.
%       > L: Window length
% REFERENCES:
% [1] A. K. Maddirala and R. A. Shaik, "Removal of EMG artifacts from single 
%     channel EEG signal using singular spectrum analysis," 2015 IEEE 
%     International Circuits and Systems Symposium (ICSyS), Langkawi, 2015, pp. 111-115.

[numch,sample] = size(X);
Y = [];
    for nch = 1 : numch
         x1 = X(nch,:);
         N=length(x1); 
         if L>N/2;L=N-L;end
	      K=N-L+1; 
          Z=zeros(L,K);  
	    for i=1:K
	      Z(1:L,i)=x1(i:L+i-1); 
        end
          S=Z*Z'; 
	      [Us,autoval]=eig(S);
	      [d,i]=sort(diag(autoval),'descend');  
          Us=Us(:,i);
          vn = ncomps - 1; 
       for i = 1 : vn
          U=Us(:,i);
          V = (Z')*U; 
          tm = U*V';
          y=zeros(N,1);  
          Lp=min(L,K);
          Kp=max(L,K);

         for k=0:Lp-2
           for m=1:k+1;
            y(k+1)=y(k+1)+(1/(k+1))*tm(m,k-m+2);
           end
         end

        for k=Lp-1:Kp-1
         for m=1:Lp;
          y(k+1)=y(k+1)+(1/(Lp))*tm(m,k-m+2);
         end
        end

       for k=Kp:N
        for m=k-Kp+2:N-Kp+1;
         y(k+1)=y(k+1)+(1/(N-k))*tm(m,k-m+2);
        end
       end
           X_tm (i,:) = y';
    end
        R(nch,:) = X(nch,:)-sum(X_tm);        % %residue
        [J,M] = size(X_tm);
        Ynch = zeros(J+1,M);
        Ynch(1:J,:) = X_tm(1:J,:);
        Ynch(J+1,:) = R(nch,:);
        Y = cat(1,Y,Ynch);     
    end
end

