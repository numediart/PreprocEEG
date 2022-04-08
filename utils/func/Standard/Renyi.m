function RE=Renyi(DataName,N,q)                      
%DataName--Signal sequence to be calculated for the Renyi entropy
%N--the number of intervals taken when calculating the Renyi entropy value
%q--the coefficient when calculating the Renyi entropy value
%if q>1£¬the subsequence with high probability plays a leading role in the calculation.
%q<1Ê±£¬subsequences with small probability play a leading role in calculation

x=detrend(DataName);                       
sigma=std(x);                        
segment=zeros(1,N+1);
for i=-25:25
    segment(i+26)=i*3*sigma/25;      
end
n=hist(x,segment);                     % Histogram statistics were made according to the divided interval
s=sum(n);                                % statistic summation of each interval
p=n/s;                                    % find the probability density of each interval
% bar(segment,p);                         % probability density distribution

RE=0;                                     % seeking Renyi entropy
for i=1:(N+1)
    RE=p(i)^q+RE;
end
RE=log(RE)/(1-q)
 