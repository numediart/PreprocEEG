% This is the graphical user interface for ploting signals.
%  The code is written by  Luchang Li and Wei Tao .
function multichannelplot(X,fs,gap)
[r c] = size(X);
x = 1:c;
x = x/fs;
y = 1:r;
y = y*gap;
% figure;
for i=1:r
    pos = y(r-i+1);
    plot(x,X(i,:)+pos,'k-','LineWidth',1);
    hold on;
end

end
