function [Y,W] = CCA_threshold(Comp_save,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2)
% This is the threshold selection program by  Wei Tao and Luchang Li.
% [Y,W] = CCA_threshold(Comp_save,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2)
%  produces a matrix Y of dimension [m by T].
%  which is an estimate of clean signals processed by the CCA algorithm.
% NOTE:Comp_save: the observation matrix of dimension [m by T].
%      threshold: the autocorrelation ,the entropy £¬the kurtosis .
Comp_save1=Comp_save;
Comp_save2=Comp_save;
Comp_save3=Comp_save;
Comp_save4=Comp_save;
Lend = size(Comp_save,1);
for cv = 1:Lend
    autocc1 = myautocorrelation(Comp_save1(cv,:),acthreshold1,acthreshold2);
    if autocc1 < 1
      Comp_save(cv,:) = 0;
    end
end
entropy = myentropy(Comp_save2,enthreshold1,enthreshold2);
for cv = 1:Lend
%     entropy = myentropy(Comp_save(cv,:),enthreshold1,enthreshold2);
    if entropy(cv,:) < 1
      Comp_save(cv,:) = 0;
    end
end
kurtosis = mykurtosis(Comp_save3,kuthreshold1, kuthreshold2);
for cv = 1:Lend
%     kurtosis = mykurtosis(Comp_save(cv,:),kuthreshold1, kuthreshold2);
%     abs(kurtosis );
    if kurtosis(cv,:) < 1
      Comp_save(cv,:) = 0;
    end
end
variances = myvariance(Comp_save4,vathreshold1,vathreshold2)
for cv = 1:Lend
    if variances(cv,:) < 1
      Comp_save(cv,:) = 0;
    end
end
            Y = inv(WC{1,1}')*inv(B(:,:,1))*Comp_save;
            W = B(:,:,1);
  

end

