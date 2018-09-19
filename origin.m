pcd_1 =  pcread('E:/pcd/pcd_1/0.pcd');
figure(2);
subplot(121);
pcshow(pcd_1);
pcd_2 =  pcread('E:/pcd/pcd_1/1200.pcd');
subplot(122);
pcshow(pcd_2);