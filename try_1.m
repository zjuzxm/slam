dir_path = 'E:/pcd/pcd_2/';
folder = dir(dir_path);
num = size(folder);
n = num(1,1);
i = 0;
file_path = strcat(dir_path,int2str(i));
file_path = strcat(file_path,'.pcd');
ptCloud1 = pcread(file_path);
ptCloud_1 = pcdenoise(ptCloud1);
maxNumPoints = 6;
for i = 0 : num - 3
    file_path = strcat(dir_path,int2str(i));
    file_path = strcat(file_path,'.pcd');
    ptCloud2 = pcread(file_path);
    ptCloud_2 = pcdenoise(ptCloud2);
    pcCloudOut1 = pcdownsample(ptCloud_1,'nonuniformGridSample',maxNumPoints);
    ptCloudOut2 = pcdownsample(ptCloud_2,'nonuniformGridSample',maxNumPoints);
    [tran,new,E] = pcregistericp(ptCloudOut1,ptCloudOut2);
    ori = pcmerge(ori,controldata2,0.1);
end
pcshow(ori);