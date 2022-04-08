function [Y,W] = ICA_threshold_fastica(Sica,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2)
% This is the threshold selection program by  Wei Tao and Luchang Li.
%  [Y,W]=ICA_threshold_fastica(Sica,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2)
%  produces a matrix Y of dimension [m by T].
%  which is an estimate of clean signals processed by the fastICA algorithm.
% NOTE:Sica: the observation matrix of dimension [m by T].
%      threshold: the autocorrelation ,the entropy £¬the kurtosis .
        Lend = size(Sica,1);
        compn = Lend - 1;
        Sica1=Sica;
        
for cv = 1:Lend
    autocc1 = myautocorrelation(Sica1(cv,:),acthreshold1,acthreshold2);
    if autocc1 < 1
      Sica(cv,:) = 0;
    end
end
entropy = myentropy(Sica1,enthreshold1,enthreshold2);
for cv = 1:Lend
%     entropy = myentropy(Sica(cv,:),enthreshold1,enthreshold2);
    if entropy (cv,:)< 1
      Sica(cv,:) = 0;
    end
end
 kurtosis = mykurtosis(Sica1,kuthreshold1,kuthreshold2);
for cv = 1:Lend
%     kurtosis = mykurtosis(Sica(cv,:),kuthreshold1,kuthreshold2);
    if kurtosis(cv,:) < 1
      Sica(cv,:) = 0;
    end
end
variances = myvariance(Sica1,vathreshold1,vathreshold2);
for cv = 1:Lend
    if variances(cv,:) < 1
      Sica(cv,:) = 0;
    end
end
             Y = inv(WC{1,1}')*inv(Wica')*(inv(P_ica)*Sica);
             W =  Wica';
end

