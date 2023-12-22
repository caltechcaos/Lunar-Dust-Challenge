% In chronological order
% 1: test data sets to get the 0 force signal
% 2: 100 pulses/s
% 3: 100 pulses/s
% 4: 50 pulses/s

clear
close all
clc

indD = 0;
dataList = {};

load TestData_10-Jun-2021_163447.mat
indD = indD+1;
dataList = [dataList,dataStore];
load TestData_10-Jun-2021_163816.mat
indD = indD+1;
dataList = [dataList,dataStore];
load TestData_10-Jun-2021_164120.mat
indD = indD+1;
dataList = [dataList,dataStore];
load TestData_10-Jun-2021_164301.mat
indD = indD+1;
dataList = [dataList,dataStore];

C = 2.22138682460533e-05; % Signal to force value

zeroSignal = mean(dataList{1}(:,2));

rev2dist = 1/4; % rev/mm
pul2rev = 3200; % pulses/rev
pul_sec = [100,100,50]; %pulses/s
time2dist = pul_sec./(rev2dist*pul2rev);

plotColors = [1 0 0;
    0 1 0;
    0 0 1];

for ind1 = 2:4
    
    data = dataList{ind1};
    data(:,2) = (data(:,2) - zeroSignal)*C;
    
    
    timeOffset = data(1,1);
    data(:,1) = data(:,1) - timeOffset;
    
    data(:,1) = data(:,1)*time2dist(ind1-1);
    

    if ind1 == 2
    data(:,1) = 3.6-data(:,1);
    selInd = data(:,1)>0 & data(:,1) < 2.93;
    data = data(selInd,:);
    data(:,2) = -data(:,2);
    elseif ind1 == 3
    data(:,1) = 3.598-data(:,1);
    selInd = data(:,1)>0 & data(:,1) < 2.921;
    data = data(selInd,:);
    data(:,2) = -data(:,2);
    elseif ind1 == 4
    data(:,1) = 3.172-data(:,1);
    selInd = data(:,1)>0 & data(:,1) < 2.92;
    data = data(selInd,:);
    data(:,2) = -data(:,2);
    end
    
    line(data(:,1),data(:,2),'color',plotColors(ind1-1,:),'marker','.','markersize',1)
    grid on
    % xlabel('Time (s)')
    xlabel('Distance (mm)')
    ylabel('Force (N)')
    
    dataOut{ind1-1} = data;
    
%     selInd = data(:,1) > 0; 
%     x = data(selInd,1);
%     y = data(selInd,2);
%     keyboard
    
end

save('pogoData','dataOut')

%%

% clf
% f = @(x) 16*exp(-(x+1)/2.75);
% plot(x,[y,f(x)])

