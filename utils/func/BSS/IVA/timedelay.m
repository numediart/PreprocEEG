function s = timedelay(x, t)

L = size(x,2);
s = [x(:,L-t+1:end) x(:,1:L-t)];

end