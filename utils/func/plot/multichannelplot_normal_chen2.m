function multichannelplot_normal_chen2(eeg, fs)
% plot multi-channel EEG
%      eeg       EEG data (N channels *P sampling point)
%      fs        Signal sampling rate
%      marktype  channel mark: 0-none, 1-digit serial number, 2-lead name, default 1
%      channame  The name of the channel, represented by an array of cells, each unit is a 1-channel name
if nargin<2
    error('No enough input');
end

[N,P] = size(eeg);
t = (0:(P-1))/fs; % time
data = eeg;
for n = 1:N
    temp = data(n,:);
    temp = temp-mean(temp);
    temp = temp/max(temp);
    data(n,:) = temp;
end
interval = 2;
% figure(2);
hold on;
for n = 1:N
    plot(t, data(n,:)-(n-1)*interval, 'r');
    text(0, -(n-1)*interval, num2str(n), 'HorizontalAlignment', 'right', 'VerticalAlignment', 'middle', 'Color', [0,0,0]);
end
xlabel('(second)');
set(gca,'YTick',[]);
set(gca,'Ycolor','white');
% box off;
% set(gca,'Color','white')
% box off

