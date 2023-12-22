clear
close all
clc

load magnetData.mat

for ind1 = 1:3
    line(dataOut{ind1}(:,1),dataOut{ind1}(:,2),'linestyle','none','color',[ 0 0 0],'marker','.','markersize',1)
end

xlabel('Distance (mm)')
ylabel('Force (N)')
title('Magnet Force vs Magnet Face Seperation Distance')
grid on