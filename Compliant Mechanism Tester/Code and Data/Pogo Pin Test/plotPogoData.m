clear
close all
clc

load pogoData.mat

for ind1 = 1:3
    line(dataOut{ind1}(:,1),dataOut{ind1}(:,2),'linestyle','none','color',[ 0 0 0],'marker','.','markersize',1)
end

xlabel('Displacement (mm)')
ylabel('Force (N)')
title('Pogo Connector Pin Force vs Pin displacement')
grid on