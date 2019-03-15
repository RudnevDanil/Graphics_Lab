close all;
clear all;

a=1;
b=1;
c=1;
u = (-3:0.01:3)';
v = [0:0.01*pi:2*pi];
X = b*u*sin(v);
Y = c*u*ones(size(v));
Z = a*u*cos(v);
sizes = size(X);
figure('Color','w')
mesh(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z')

byf = make_points_matrix(X,Y,Z);
byf_1 = byf;
byf_2 = move(byf,1,1,1);
byf_2 = rotate(byf_2,70,'x',0.3,0.4,0.5);

second_figure = make_squared_matrix(byf_2,sizes(1),sizes(2));
sec_x = squeeze(second_figure(1,:,:));
sec_y = squeeze(second_figure(2,:,:));
sec_z = squeeze(second_figure(3,:,:));
hold on;
mesh(sec_x,sec_y,sec_z);


collision = finding_collision(byf_1,byf_2);
col_x = squeeze(collision(:,1));
col_y = squeeze(collision(:,2));
col_z = squeeze(collision(:,3));
plot3(col_x,col_y,col_z,'pr');




