function multichannelplot_compare_chen(eeg1, eeg2, fs)
% plot multi-channel EEG£¬eeg1 is below (green thick line), eeg2 is on (black thin line)
%      eeg1      EEG data1 (N channels *P sampling point)
%      eeg2      EEG data2 (N channels *P sampling point)
%      fs        Signal sampling rate
%      interval  adjacent channel up and down distance
%      marktype  channel mark: 0-none, 1-digit serial number, 2-lead name, default 1
%      channame  The name of the channel, represented by an array of cells, each unit is a 1-channel name


[N1,P1] = size(eeg1);
[N2,P2] = size(eeg2);
t = (0:(P1-1))/fs; % time
data1 = eeg1;
for n = 1:N1
    temp = data1(n,:);
%     temp = temp-mean(temp);
%     temp = temp/max(temp);
    data1(n,:) = temp;
end
data2 = eeg2;
for n = 1:N1
    temp = data2(n,:);
%     temp = temp-mean(temp);
%     temp = temp/max(temp);
    data2(n,:) = temp;
end
% figure;
hold on;
interval = 2;

for n = 1:N1
    plot(t, data1(n,:)-(n-1)*interval, 'Color', [1,0,0]);
    plot(t, data2(n,:)-(n-1)*interval, 'Color', [0,0,0]);
  text(0, -(n-1)*interval, num2str(n), 'HorizontalAlignment', 'right', 'VerticalAlignment', 'middle', 'Color', [0,0,0])
end
xlabel('(second)');
set(gca,'YTick',[]);
set(gca,'Ycolor','white');
% box off;
% set(gca,'Color','white')
% box off