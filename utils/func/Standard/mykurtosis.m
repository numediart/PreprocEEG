function [Y] = mykurtosis(X,kuthreshold1,kuthreshold2)
% This is an kurtosis procedure for selecting selecting artifact-related components. 
% program  by  Wei Tao and Luchang Li.
[numOfcompo ,T] = size(X);
for i=1:numOfcompo
%         kurto(i,:)= kurtosis(X(i,:)) - 3*(std(X(i,:)))^2;
          dim = find(size(X(i,:)) ~= 1, 1);
          if isempty(dim), dim = 1; end
          tile = ones(1,max(ndims(X(i,:)),dim));
          tile(dim) = size(X(i,:),dim);
          x0 = X(i,:) - repmat(nanmean(X(i,:),dim), tile);
          s2 = nanmean(x0.^2,dim); % this is the biased variance estimator
          m4 = nanmean(x0.^4,dim);
          kurto(i,:) = m4 - 3*s2.^2;
end
kurto=zscore(kurto);   
 for i=1:numOfcompo

        if abs(kurto(i,:))>kuthreshold1&abs(kurto(i,:))<kuthreshold2
               Y(i,:)= 0;
        else 
               Y (i,:)= 1;
        end
 end
end