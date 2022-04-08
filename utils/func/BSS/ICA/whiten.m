function [X W] = whiten(X,fudgefactor)  

X = bsxfun(@minus, X, mean(X));  
A = X'*X;  
[V,D] = eig(A);  
W = V*diag(1./(diag(D)+fudgefactor).^(1/2))*V';  
X = X*W;
end 
