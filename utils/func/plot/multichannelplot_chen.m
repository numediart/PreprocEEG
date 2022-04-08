function multichannelplot_chen(eeg, fs, interval, marktype, channame)
% plot multi-channel EEG
%      eeg       EEG data (N channels *P sampling point)
%      fs        Signal sampling rate
%      interval  adjacent channel up and down distance
%      marktype  channel mark: 0-none, 1-digit serial number, 2-lead name, default 1
%      channame  The name of the channel, represented by an array of cells, each unit is a 1-channel name
if nargin<3
    error('No enough input');
elseif nargin==3
    marktype = 1;
elseif nargin==4
    if marktype==2
        error('No channel name');
    end
end

[N,P] = size(eeg);
t = (0:(P-1))/fs; % time
figure;
hold on;
for n = 1:N
    plot(t, eeg(n,:)-(n-1)*interval, 'k');
    if marktype==2
%         text(0, -(n-1)*interval, channame{n}, 'HorizontalAlignment', 'right', 'VerticalAlignment', 'middle', 'Color', [0,0,0], 'BackgroundColor', [1,1,1]);
        text(0, -(n-1)*interval, channame{n}, 'HorizontalAlignment', 'right', 'VerticalAlignment', 'middle', 'Color', [0,0,0]);
    elseif marktype==1
%         text(0, -(n-1)*interval, num2str(n), 'HorizontalAlignment', 'right', 'VerticalAlignment', 'middle', 'Color', [0,0,0], 'BackgroundColor', [1,1,1]);
        text(0, -(n-1)*interval, num2str(n), 'HorizontalAlignment', 'right', 'VerticalAlignment', 'middle', 'Color', [0,0,0]);
    end
end
% xlabel('(second)');
set(gca,'YTick',[]);
set(gca,'Ycolor','white');
% set(gca,'Ycolor','white');
% box off;
% set(gca,'Color','white')
% box off

