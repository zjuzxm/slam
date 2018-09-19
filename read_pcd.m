function [ori] = read_pcd(dir_path)
% dir_path =  'E:/pcd/pcd_2/';
folder = dir(dir_path);
num = size(folder);
n = num(1,1);
i = 0;
file_path = strcat(dir_path,int2str(i));
file_path = strcat(file_path,'.pcd');
ori = pcread(file_path);
for i = 0 : 5
    file_path = strcat(dir_path,int2str(i));
    file_path = strcat(file_path,'.pcd');
    controldata2 = pcread(file_path);
    [tran,new,E] = pcregistericp(ori,controldata2);
    ori = pcmerge(ori,controldata2,0.1);
end
pcshow(ori);

end