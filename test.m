


ptCloud_1 = pcread('E:/pcd/pcd_1/0.pcd');
figure(1);
pcshow(ptCloud_1);
ptCloudIn = ptCloud_1;
percentage = 0.3;
gridStep = 0.1;
maxNumPoints = 6;
ptCloudOut = pcdownsample(ptCloudIn,'random',percentage);
figure(2);
pcshow(ptCloudOut);
ptCloudIn = pcdenoise(ptCloudIn);
ptCloudOut = pcdownsample(ptCloudIn,'gridAverage',gridStep);
figure(3);
pcshow(ptCloudOut);
ptCloudOut = pcdownsample(ptCloudIn,'nonuniformGridSample',maxNumPoints);
figure(4);
pcshow(ptCloudOut);
