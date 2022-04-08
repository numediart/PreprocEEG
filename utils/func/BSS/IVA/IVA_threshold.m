function [Y,W] = IVA_threshold(Comp_save,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2)
% This is the threshold selection program by  Wei Tao and Luchang Li.
% [Y,W] = IVA_threshold(Comp_save,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2)
%  produces a matrix Y of dimension [m by T].
%  which is an estimate of clean signals processed by the IVA algorithm.
% NOTE:Comp_save: the observation matrix of dimension [m by T].
%      threshold: the autocorrelation ,the entropy £¬the kurtosis .
        Lend = size(Comp_save,1);
        compn = Lend - 1;
for cv = 1:Lend
    autocc1 = myautocorrelation(Comp_save(cv,:),acthreshold1,acthreshold2);
    if autocc1 < 1
      Comp_save(cv,:) = 0;
    end
end
 entropy = myentropy(Comp_save,enthreshold1,enthreshold2);
for cv = 1:Lend
%     entropy = myentropy(Comp_save(cv,:),enthreshold1,enthreshold2);
    if entropy(cv,:) < 1
      Comp_save(cv,:) = 0;
    end
end
   kurtosis = mykurtosis(Comp_save,kuthreshold1,kuthreshold2);
for cv = 1:Lend
%     kurtosis = mykurtosis(Comp_save(cv,:),kuthreshold1, kuthreshold2);
    if kurtosis(cv,:) < 1
      Comp_save(cv,:) = 0;
    end
end
        Y = inv(WC{1,1}')*inv(F(:,:,1))*(inv(P_iva)*Comp_save);
            row = size(Y,2);
            for i=1:row
            Y(:,i) = Y(:,i)+WC{3,1}';
            end
        W = F(:,:,1);
        end  


