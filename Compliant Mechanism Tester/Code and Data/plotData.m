clear
close all
clc

load TestData_06-May-2021_153523.mat

data = OutputStore;

timeOffset = data(1,1);
forceOffset = mean(data(end-50:end,2));

data(:,1) = data(:,1) - timeOffset;
data(:,2) = data(:,2) - forceOffset;
data(:,2) = data(:,2)/1000*9.81;

line(data(:,1),data(:,2),'color',[0 0 0],'marker','.')
grid on
xlabel('Time (s)')
ylabel('Force (N)')