clear all
clc
%%
data1 = table2array(readtable('odom_position_x.xlsx'));
data2 = table2array(readtable('obr_pose_postition_x.xlsx'));
data3 = table2array(readtable('amcl_pose_position_x.xlsx'));
clc

data1(:,1) = data1(:,1)-data1(1,1);
data2(:,1) = data2(:,1)-data2(1,1);
data3(:,1) = data3(:,1)-data3(1,1);

newODOM_xPos(:,1) = resample(data1(:,1),length(data2(:,1)),length(data1(:,1)));
newODOM_xPos(:,2) = resample(data1(:,2),length(data2(:,1)),length(data1(:,1)));

newAMCL_xPos(:,1) = resample(data3(:,1),length(data2(:,1)),length(data3(:,1)));
newAMCL_xPos(8200:length(newAMCL_xPos(:,1)),1) = 0.66;
newAMCL_xPos(:,2) = resample(data3(:,2),length(data2(:,1)),length(data3(:,1)));
newAMCL_xPos(8200:length(newAMCL_xPos(:,1)),2) = 66.254;

newOBR_xPos(:,1) = data2(:,1);
newOBR_xPos(:,2) = data2(:,2);

dlmwrite('odom_position_x.txt', newODOM_xPos, 'delimiter','\t','newline','pc')
dlmwrite('amcl_pose_position_x.txt', newAMCL_xPos, 'delimiter','\t','newline','pc')
dlmwrite('obr_pose_postition_x.txt', newOBR_xPos, 'delimiter','\t','newline','pc')


%%
data1 = table2array(readtable('odom_position_y.xlsx'));
data2 = table2array(readtable('obr_pose_postition_y.xlsx'));
data3 = table2array(readtable('amcl_pose_position_y.xlsx'));
clc

data1(:,1) = data1(:,1)-data1(1,1);
data2(:,1) = data2(:,1)-data2(1,1);
data3(:,1) = data3(:,1)-data3(1,1);

newODOM_xPos(:,1) = resample(data1(:,1),length(data2(:,1)),length(data1(:,1)));
newODOM_xPos(:,2) = resample(data1(:,2),length(data2(:,1)),length(data1(:,1)));

newAMCL_xPos(:,1) = resample(data3(:,1),length(data2(:,1)),length(data3(:,1)));
newAMCL_xPos(8300:length(newAMCL_xPos(:,1)),1) = 0.664;
newAMCL_xPos(:,2) = resample(data3(:,2),length(data2(:,1)),length(data3(:,1)));
newAMCL_xPos(8339:length(newAMCL_xPos(:,1)),2) = -11.9;

newOBR_xPos(:,1) = data2(:,1);
newOBR_xPos(:,2) = data2(:,2);

dlmwrite('odom_position_y.txt', newODOM_xPos, 'delimiter','\t','newline','pc')
dlmwrite('amcl_pose_position_y.txt', newAMCL_xPos, 'delimiter','\t','newline','pc')
dlmwrite('obr_pose_postition_y.txt', newOBR_xPos, 'delimiter','\t','newline','pc')

%%
data1 = table2array(readtable('odom_orientation_z.xlsx'));
data2 = table2array(readtable('obr_pose_orientation_z.xlsx'));
data3 = table2array(readtable('amcl_pose_orientation_z.xlsx'));
clc

data1(:,1) = data1(:,1)-data1(1,1);
data2(:,1) = data2(:,1)-data2(1,1);
data3(:,1) = data3(:,1)-data3(1,1);

newODOM_xPos(:,1) = resample(data1(:,1),length(data2(:,1)),length(data1(:,1)));
newODOM_xPos(:,2) = resample(data1(:,2),length(data2(:,1)),length(data1(:,1)));

newAMCL_xPos(:,1) = resample(data3(:,1),length(data2(:,1)),length(data3(:,1)));
newAMCL_xPos(8315:length(newAMCL_xPos(:,1)),1) = 0.664;
newAMCL_xPos(:,2) = resample(data3(:,2),length(data2(:,1)),length(data3(:,1)));
newAMCL_xPos(8370:length(newAMCL_xPos(:,1)),2) = -0.64;

newOBR_xPos(:,1) = data2(:,1);
newOBR_xPos(:,2) = data2(:,2);

dlmwrite('odom_orientation_z.txt', newODOM_xPos, 'delimiter','\t','newline','pc')
dlmwrite('obr_pose_orientation_z.txt', newAMCL_xPos, 'delimiter','\t','newline','pc')
dlmwrite('amcl_pose_orientation_z.txt', newOBR_xPos, 'delimiter','\t','newline','pc')
