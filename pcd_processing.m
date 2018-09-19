Dir =  'E:/pcd/pcd_2/';
folder = dir(Dir);
num = size(folder);
dir_now = [Dir,int2str(1),'.pcd'];
ori = pcread(dir_now);
for p = 1 : 5
    dir_now = [Dir,int2str(p+1),'.pcd'];
    controldata2 = pcread(dir_now);
    [tran,new,E] = pcregistericp(ori,controldata2);
    ori = pcmerge(ori,controldata2,0.1);
end
pcshow(ori);
