function  [Y] = single_threshold(Single_decompose,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2)
% This is the threshold selection program by  Wei Tao and Luchang Li.
% [Y] = single_threshold(Single_decompose,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2)
%  produces a matrix Y of dimension [m by T].
%  which is an estimate of clean signals processed for single-channel signal.
% NOTE:Single_decompose: the observation matrix of dimension [m by T].
%      threshold: the autocorrelation ,the entropy £¬the kurtosis .
 Lend = size(Single_decompose,1);
 Single_decompose1 = Single_decompose;
for cv = 1:Lend
    autocc1 = myautocorrelation(Single_decompose1(cv,:),acthreshold1,acthreshold2);
    if autocc1 < 1
      Single_decompose(cv,:) = 0;
    end
end
entropy = myentropy(Single_decompose1,enthreshold1,enthreshold2);
for cv = 1:Lend
%     entropy = myentropy(Single_decompose(cv,:),enthreshold1,enthreshold2);
    if entropy(cv,:) < 1
      Single_decompose(cv,:) = 0;
    end
end
kurtosis = mykurtosis(Single_decompose1,kuthreshold1,kuthreshold2);
for cv = 1:Lend
%     kurtosis = mykurtosis(Single_decompose(cv,:),kuthreshold1,kuthreshold2);
    if kurtosis(cv,:)< 1
     Single_decompose(cv,:) = 0;
    end
end
variances = myvariance(Single_decompose1,vathreshold1,vathreshold2)
for cv = 1:Lend
    if variances(cv,:) < 1
      Single_decompose(cv,:) = 0;
    end
end
Y= Single_decompose;
end


