%filepath = fullfile('E:','data','data_1.bag')  ;
filepath = 'E:/bag_data/data_2.bag';
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

x = readField(ptcloud,'x');
y = readField(ptcloud,'y');
z = readField(ptcloud,'z');



% position=zeros(num,3);  
% for i=1:3099  
%     position(i,1)= x(i);  
%     position(i,2)= y(i);  
%     position(i,3)= z(i);  
% end  
% 
% for i=1:num  
%     plot3(position(i,1),position(i,2),position(i,3),'r.','markersize',5);  
%     hold on  
% end 

