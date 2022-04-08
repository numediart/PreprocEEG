function s = timedelay(x, t)
%  program  by  Xueyuan Xu and Luchang Li.
% s = timedelay(x, t) produces a matrix s of dimension [m by T] 
% which is a delay  algorithm .
% Note: > x: the observation matrix of dimension [m by T].
%       > t: delay time.
L = size(x,2);
s = [x(:,L-t+1:end) x(:,1:L-t)];

end