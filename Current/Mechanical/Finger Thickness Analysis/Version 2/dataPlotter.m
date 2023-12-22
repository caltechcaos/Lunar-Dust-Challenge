clear
close all

load('data.mat')

dataX = reshape(data(1,:),[12,12]);
dataY = reshape(data(2,:),[12,12]);
dataZ = reshape(data(3,:),[12,12]);

dataZ = dataZ./max(dataZ,[],'all');

surf(dataX,dataY,dataZ)
view(-198,36)
xlabel('Finger Offset (mm)')
ylabel('Finger Thickness (mm)')
zlabel('Normalized Max Stress')

ind0 = dataZ == 0;
line(dataX(ind0),dataY(ind0),dataZ(ind0),'marker','.','markersize',20,'color',[1 0 0],'linestyle','none')

dataZ(ind0) = 100;

ind01 = find(dataZ == min(dataZ,[],'all'));

line(dataX(ind01),dataY(ind01),dataZ(ind01),'marker','.','markersize',20,'color',[0 1 0],'linestyle','none')

