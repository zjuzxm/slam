dir_path = 'E:/pcd/pcd_2/';
folder = dir(dir_path);
num = size(folder);
n = num(1,1);
i = 0;
file_path = strcat(dir_path,int2str(i));
file_path = strcat(file_path,'.pcd');
TotalCloud = {};
for i = 1 : num - 3
    file_path = strcat(dir_path,int2str(i));
    file_path = strcat(file_path,'.pcd');
    ptCloud = pcread(file_path);
    TotalCloud{i} = ptCloud;
end
