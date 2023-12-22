% In chronological order
% 1 and 2, test data sets to get the 0 force signal
% 3: 100 pulses/s
% 4: 200 pulses/s
% 5: 400 pulses/s

clear
close all
clc

indD = 0;
dataList = {};

load TestData_10-Jun-2021_145355.mat
indD = indD+1;
dataList = [dataList,dataStore];
load TestData_10-Jun-2021_145616.mat
indD = indD+1;
dataList = [dataList,dataStore];
load TestData_10-Jun-2021_150501.mat
indD = indD+1;
dataList = [dataList,dataStore];
load TestData_10-Jun-2021_152524.mat
indD = indD+1;
dataList = [dataList,dataStore];
load TestData_10-Jun-2021_153035.mat
indD = indD+1;
dataList = [dataList,dataStore];

C = 2.22138682460533e-05; % Signal to force value

zeroSignal = mean([dataList{1}(dataList{1}(:,1)>(5+dataList{1}(1,1)),2);dataList{2}(dataList{2}(:,1)<(18+dataList{2}(1,1)),2)]);

rev2dist = 1/4; % rev/mm
pul2rev = 3200; % pulses/rev
pul_sec = [100,200,400]; %pulses/s
time2dist = pul_sec./(rev2dist*pul2rev);

plotColors = [1 0 0;
    0 1 0;
    0 0 1];

for ind1 = 3:5
    
    data = dataList{ind1};
    data(:,2) = (data(:,2) - zeroSignal)*C;
    
    
    timeOffset = data(1,1);
    data(:,1) = data(:,1) - timeOffset;
    
    data(:,1) = data(:,1)*time2dist(ind1-2);
    
    [~,iMax] = max(data(:,2));
    data(:,1) = data(:,1) - data(iMax,1);
    
    selInd = data(:,1) >0 & data(:,1)< 30;
    data = data(selInd,:);
    data(:,1) = data(:,1)+.2;
    
    line(data(:,1),data(:,2),'color',plotColors(ind1-2,:),'marker','.','markersize',1)
    grid on
    % xlabel('Time (s)')
    xlabel('Distance (mm)')
    ylabel('Force (N)')
    
%     selInd = data(:,1) > 0; 
%     x = data(selInd,1);
%     y = data(selInd,2);
%     keyboard
    
    dataOut{ind1-2} = data;
end

save('magnetData','dataOut')

%%

% clf
% f = @(x) 16*exp(-(x+1)/2.75);
% plot(x,[y,f(x)])

