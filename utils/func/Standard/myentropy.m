function [Y] = myentropy(X,enthreshold1,enthreshold2)
% This is an entropy procedure for selecting selecting artifact-related components. 
% program  by  Wei Tao and Luchang Li.
[numOfcompo ,T] = size(X);
X=real(X);
for i=1:numOfcompo
    
        entro(i,:) = Renyi(X(i,:),20,2) ;
end
       entro =zscore(entro );
       for i=1:numOfcompo
        if abs(entro(i,:)) >enthreshold1&&abs(entro(i,:)) <enthreshold2
               Y(i,:)= 0;
        else 
               Y(i,:) = 1;
        end
       end
end