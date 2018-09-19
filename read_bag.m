
function [x,y,z] = read_bag(filepath)
%UNTITLED This function can read the x ,y ,z of the bag file and plot.
%   此处显示详细说明
filepath = 'E:/bag_data/data_1.bag';
bag = rosbag(filepath);
sensor_message = select(bag,'MessageType','sensor_msgs/PointCloud2');
%data = readMessages(sensor_message);
num = bag.NumMessages;
data = readMessages(sensor_message,bag.NumMessages);

ptcloud = data{1,1};
xyz = readXYZ(ptcloud);
xyzvalid = xyz(~isnan(xyz(:,1)),:);
%rgb = readRGB(ptcloud);

  figure ;
 scatter3(ptcloud);
 
end

