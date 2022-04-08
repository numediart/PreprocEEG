function [Y] = myvariance(X,vathreshold1,vathreshold2)
% This is an variance procedure for selecting selecting artifact-related components. 
% program  by  Wei Tao and Luchang Li.
[numOfcompo ,T] = size(X);

for i=1:numOfcompo
        variances(i,:)= var(X(i,:));
end  
variances = zscore(variances);
 for i=1:numOfcompo

        if variances(i,:)>vathreshold1&variances(i,:)<vathreshold2
               Y(i,:)= 0;
        else 
               Y (i,:)= 1;
        end
 end
end
