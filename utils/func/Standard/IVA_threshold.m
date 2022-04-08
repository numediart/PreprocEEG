function [Y,W] = IVA_threshold(Comp_save,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2)
% This is the threshold selection program by  Wei Tao and Luchang Li.
% [Y] = IVA_threshold(Single_decompose,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2)
%  produces a matrix Y of dimension [m by T].
%  which is an estimate of clean signals processed by the IVA algorithm.
% NOTE:Comp_save: the observation matrix of dimension [m by T].
%      threshold: the autocorrelation ,the entropy £¬the kurtosis .
        Lend = size(Comp_save,1);
        compn = Lend - 1;
        Comp_save1=Comp_save;
for cv = 1:Lend
    autocc1 = myautocorrelation(Comp_save1(cv,:),acthreshold1,acthreshold2);
    if autocc1 < 1
      Comp_save(cv,:) = 0;
    end
end
 entropy = myentropy(Comp_save1,enthreshold1,enthreshold2);
for cv = 1:Lend
%     entropy = myentropy(Comp_save(cv,:),enthreshold1,enthreshold2);
    if entropy(cv,:) < 1
      Comp_save(cv,:) = 0;
    end
end
   kurtosis = mykurtosis(Comp_save1,kuthreshold1,kuthreshold2);
for cv = 1:Lend
%     kurtosis = mykurtosis(Comp_save(cv,:),kuthreshold1, kuthreshold2);
    if kurtosis(cv,:) < 1
      Comp_save(cv,:) = 0;
    end
end
variances = myvariance(Comp_save1,vathreshold1,vathreshold2)
for cv = 1:Lend
    if variances(cv,:) < 1
      Comp_save(cv,:) = 0;
    end
end
        Y = inv(WC{1,1}')*inv(F(:,:,1))*(inv(P_iva)*Comp_save);
        W = F(:,:,1);
        end  


