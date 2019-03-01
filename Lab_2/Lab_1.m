%{
Img_byf = imread('clock.jpg');
Img = Img_byf(:,:,1);
points_arr = [];
amount_points = 1;
img_sizes = size(Img);
for i = 1:img_sizes(1)-1
 for j = 1:img_sizes(2)-1
     if Img(i,j) < 230
         points_arr(amount_points,1) = i;
         points_arr(amount_points,2) = j;
         points_arr(amount_points,3) = 1;
         amount_points = amount_points + 1;
     end
 end
end
amount_points = amount_points - 1;
%}
points_arr = ones(16,4);
amount_points = 16 + 0;

%box
points_arr(1,:) = [0,2,0,1];%1
points_arr(2,:) = [0,0,0,1];%2
points_arr(3,:) = [15,0,0,1];%3
points_arr(4,:) = [15,2,0,1];%4
points_arr(5,:) = [0,2,0,1];%1
points_arr(6,:) = [0,2,7,1];%5
points_arr(7,:) = [15,2,7,1];%6
points_arr(8,:) = [15,2,0,1];%4
points_arr(9,:) = [15,2,7,1];%6
points_arr(10,:) = [15,0,7,1];%7
points_arr(11,:) = [15,0,0,1];%3
points_arr(12,:) = [15,0,7,1];%7
points_arr(13,:) = [0,0,7,1];%8
points_arr(14,:) = [0,0,0,1];%2
points_arr(15,:) = [0,0,7,1];%8
points_arr(16,:) = [0,2,7,1];%5

%numbers
% 1
points_arr(17,:) = [1,0,1,1];%1
points_arr(18,:) = [2,0,1,1];%2
points_arr(19,:) = [2,1,1,1];%2*
points_arr(20,:) = [2,0,1,1];%2
points_arr(21,:) = [2,0,6,1];%3
points_arr(22,:) = [2,1,6,1];%3*
points_arr(23,:) = [2,0,6,1];%3
points_arr(24,:) = [1,0,6,1];%4
points_arr(25,:) = [1,1,6,1];%4*
points_arr(26,:) = [1,0,6,1];%4
points_arr(27,:) = [1,0,1,1];%1
points_arr(28,:) = [1,1,1,1];%1*
points_arr(29,:) = [2,1,1,1];%2*
points_arr(30,:) = [2,1,6,1];%3*
points_arr(31,:) = [1,1,6,1];%4*
points_arr(32,:) = [1,1,1,1];%1*


% 2
points_arr(33,:) = [3,0,6,1];%5
points_arr(34,:) = [6,0,6,1];%6
points_arr(35,:) = [6,1,6,1];%6*
points_arr(36,:) = [6,0,6,1];%6
points_arr(37,:) = [6,0,3,1];%7
points_arr(38,:) = [6,1,3,1];%7*
points_arr(39,:) = [6,0,3,1];%7
points_arr(40,:) = [4,0,3,1];%8
points_arr(41,:) = [4,1,3,1];%8*
points_arr(42,:) = [4,0,3,1];%8
points_arr(43,:) = [4,0,2,1];%9
points_arr(44,:) = [4,1,2,1];%9*
points_arr(45,:) = [4,0,2,1];%9
points_arr(46,:) = [6,0,2,1];%10
points_arr(47,:) = [6,1,2,1];%10*
points_arr(48,:) = [6,0,2,1];%10
points_arr(49,:) = [6,0,1,1];%11
points_arr(50,:) = [6,1,1,1];%11*
points_arr(51,:) = [6,0,1,1];%11
points_arr(52,:) = [3,0,1,1];%12
points_arr(53,:) = [3,1,1,1];%12*
points_arr(54,:) = [3,0,1,1];%12
points_arr(55,:) = [3,0,4,1];%13
points_arr(56,:) = [3,1,4,1];%13*
points_arr(57,:) = [3,0,4,1];%13
points_arr(58,:) = [5,0,4,1];%14
points_arr(59,:) = [5,1,4,1];%14*
points_arr(60,:) = [5,0,4,1];%14
points_arr(61,:) = [5,0,5,1];%15
points_arr(62,:) = [5,1,5,1];%15*
points_arr(63,:) = [5,0,5,1];%15
points_arr(64,:) = [3,0,5,1];%16
points_arr(65,:) = [3,1,5,1];%16*
points_arr(66,:) = [3,0,5,1];%16
points_arr(67,:) = [3,0,6,1];%5
points_arr(68,:) = [3,1,6,1];%5*
points_arr(69,:) = [6,1,6,1];%6*
points_arr(70,:) = [6,1,3,1];%7*
points_arr(71,:) = [4,1,3,1];%8*
points_arr(72,:) = [4,1,2,1];%9*
points_arr(73,:) = [6,1,2,1];%10*
points_arr(74,:) = [6,1,1,1];%11*
points_arr(75,:) = [3,1,1,1];%12*
points_arr(76,:) = [3,1,4,1];%13*
points_arr(77,:) = [5,1,4,1];%14*
points_arr(78,:) = [5,1,5,1];%15*
points_arr(79,:) = [3,1,5,1];%16*
points_arr(80,:) = [3,1,6,1];%5*

% sqr high
points_arr(81,:) = [7,0,5,1];%17
points_arr(82,:) = [8,0,5,1];%18
points_arr(83,:) = [8,1,5,1];%18*
points_arr(84,:) = [8,0,5,1];%18
points_arr(85,:) = [8,0,4,1];%19
points_arr(86,:) = [8,1,4,1];%19*
points_arr(87,:) = [8,0,4,1];%19
points_arr(88,:) = [7,0,4,1];%20
points_arr(89,:) = [7,1,4,1];%20*
points_arr(90,:) = [7,0,4,1];%20
points_arr(91,:) = [7,0,5,1];%17
points_arr(92,:) = [7,1,5,1];%17*
points_arr(93,:) = [8,1,5,1];%18*
points_arr(94,:) = [8,1,4,1];%19*
points_arr(95,:) = [7,1,4,1];%20*
points_arr(96,:) = [7,1,5,1];%17*

% sqr down
points_arr(97,:) = [7,0,3,1];%21
points_arr(98,:) = [8,0,3,1];%22
points_arr(99,:) = [8,1,3,1];%22*
points_arr(100,:) = [8,0,3,1];%22
points_arr(101,:) = [8,0,2,1];%23
points_arr(102,:) = [8,1,2,1];%23*
points_arr(103,:) = [8,0,2,1];%23
points_arr(104,:) = [7,0,2,1];%24
points_arr(105,:) = [7,1,2,1];%24*
points_arr(106,:) = [7,0,2,1];%24
points_arr(107,:) = [7,0,3,1];%21
points_arr(108,:) = [7,1,3,1];%21*
points_arr(109,:) = [8,1,3,1];%22*
points_arr(110,:) = [8,1,2,1];%23*
points_arr(111,:) = [7,1,2,1];%24*
points_arr(112,:) = [7,1,3,1];%21*




% 4
points_arr(113,:) = [9,0,6,1];%25
points_arr(114,:) = [10,0,6,1];%26
points_arr(115,:) = [10,1,6,1];%26*
points_arr(116,:) = [10,0,6,1];%26
points_arr(117,:) = [10,0,4,1];%27
points_arr(118,:) = [10,1,4,1];%27*
points_arr(119,:) = [10,0,4,1];%27
points_arr(120,:) = [11,0,4,1];%28
points_arr(121,:) = [11,1,4,1];%28*
points_arr(122,:) = [11,0,4,1];%28
points_arr(123,:) = [11,0,6,1];%29
points_arr(124,:) = [11,1,6,1];%29*
points_arr(125,:) = [11,0,6,1];%29
points_arr(126,:) = [12,0,6,1];%30
points_arr(127,:) = [12,1,6,1];%30*
points_arr(128,:) = [12,0,6,1];%30
points_arr(129,:) = [12,0,1,1];%31
points_arr(130,:) = [12,1,1,1];%31*
points_arr(131,:) = [12,0,1,1];%31
points_arr(132,:) = [11,0,1,1];%32
points_arr(133,:) = [11,1,1,1];%32*
points_arr(134,:) = [11,0,1,1];%32
points_arr(135,:) = [11,0,3,1];%33
points_arr(136,:) = [11,1,3,1];%33*
points_arr(137,:) = [11,0,3,1];%33
points_arr(138,:) = [9,0,3,1];%34
points_arr(139,:) = [9,1,3,1];%34*
points_arr(140,:) = [9,0,3,1];%34
points_arr(141,:) = [9,0,6,1];%25
points_arr(142,:) = [9,1,6,1];%25*
points_arr(143,:) = [10,1,6,1];%26*
points_arr(144,:) = [10,1,4,1];%27*
points_arr(145,:) = [11,1,4,1];%28*
points_arr(146,:) = [11,1,6,1];%29*
points_arr(147,:) = [12,1,6,1];%30*
points_arr(148,:) = [12,1,1,1];%31*
points_arr(149,:) = [11,1,1,1];%32*
points_arr(150,:) = [11,1,3,1];%33*
points_arr(151,:) = [9,1,3,1];%34*

% 1
points_arr(152,:) = [13,0,6,1];%35
points_arr(153,:) = [14,0,6,1];%36
points_arr(154,:) = [14,1,6,1];%36*
points_arr(155,:) = [14,0,6,1];%36
points_arr(156,:) = [14,0,1,1];%37
points_arr(157,:) = [14,1,1,1];%37*
points_arr(158,:) = [14,0,1,1];%37
points_arr(159,:) = [13,0,1,1];%38
points_arr(160,:) = [13,1,1,1];%38*
points_arr(161,:) = [13,0,1,1];%38
points_arr(162,:) = [13,0,6,1];%35
points_arr(163,:) = [13,1,6,1];%35*
points_arr(164,:) = [14,1,6,1];%36*
points_arr(165,:) = [14,1,1,1];%37*
points_arr(166,:) = [13,1,1,1];%38*
points_arr(167,:) = [13,1,6,1];%35*

%{
% original img printing
figure
hold on
plot3(points_arr(1:16,1),points_arr(1:16,2),points_arr(1:16,3),'b')
plot3(points_arr(17:32,1),points_arr(17:32,2),points_arr(17:32,3),'g')
plot3(points_arr(33:80,1),points_arr(33:80,2),points_arr(33:80,3),'g')
plot3(points_arr(81:96,1),points_arr(81:96,2),points_arr(81:96,3),'g')
plot3(points_arr(97:112,1),points_arr(97:112,2),points_arr(97:112,3),'g')
plot3(points_arr(113:151,1),points_arr(113:151,2),points_arr(113:151,3),'g')
plot3(points_arr(152:167,1),points_arr(152:167,2),points_arr(152:167,3),'g')
%}

%{
% move and printing moved img
moved_img = move(points_arr,1,2,3);

figure
hold on
plot3(moved_img(1:16,1),moved_img(1:16,2),moved_img(1:16,3),'b')
plot3(moved_img(17:32,1),moved_img(17:32,2),moved_img(17:32,3),'g')
plot3(moved_img(33:80,1),moved_img(33:80,2),moved_img(33:80,3),'g')
plot3(moved_img(81:96,1),moved_img(81:96,2),moved_img(81:96,3),'g')
plot3(moved_img(97:112,1),moved_img(97:112,2),moved_img(97:112,3),'g')
plot3(moved_img(113:151,1),moved_img(113:151,2),moved_img(113:151,3),'g')
plot3(moved_img(152:167,1),moved_img(152:167,2),moved_img(152:167,3),'g')
%}

%{
% scale and printing scaled img
scaled_img = scale(points_arr,2,3,4,15,2,7);

figure
hold on
plot3(scaled_img(1:16,1),scaled_img(1:16,2),scaled_img(1:16,3),'b')
plot3(scaled_img(17:32,1),scaled_img(17:32,2),scaled_img(17:32,3),'g')
plot3(scaled_img(33:80,1),scaled_img(33:80,2),scaled_img(33:80,3),'g')
plot3(scaled_img(81:96,1),scaled_img(81:96,2),scaled_img(81:96,3),'g')
plot3(scaled_img(97:112,1),scaled_img(97:112,2),scaled_img(97:112,3),'g')
plot3(scaled_img(113:151,1),scaled_img(113:151,2),scaled_img(113:151,3),'g')
plot3(scaled_img(152:167,1),scaled_img(152:167,2),scaled_img(152:167,3),'g')
%}

%{
% projection and printing img
projection_img_x = projection(points_arr,'x');
projection_img_y = projection(points_arr,'y');
projection_img_z = projection(points_arr,'z');

figure
hold on
plot3(projection_img_x(1:16,1),projection_img_x(1:16,2),projection_img_x(1:16,3),'b')
plot3(projection_img_x(17:32,1),projection_img_x(17:32,2),projection_img_x(17:32,3),'g')
plot3(projection_img_x(33:80,1),projection_img_x(33:80,2),projection_img_x(33:80,3),'g')
plot3(projection_img_x(81:96,1),projection_img_x(81:96,2),projection_img_x(81:96,3),'g')
plot3(projection_img_x(97:112,1),projection_img_x(97:112,2),projection_img_x(97:112,3),'g')
plot3(projection_img_x(113:151,1),projection_img_x(113:151,2),projection_img_x(113:151,3),'g')
plot3(projection_img_x(152:167,1),projection_img_x(152:167,2),projection_img_x(152:167,3),'g')

plot3(projection_img_y(1:16,1),projection_img_y(1:16,2),projection_img_y(1:16,3),'b')
plot3(projection_img_y(17:32,1),projection_img_y(17:32,2),projection_img_y(17:32,3),'g')
plot3(projection_img_y(33:80,1),projection_img_y(33:80,2),projection_img_y(33:80,3),'g')
plot3(projection_img_y(81:96,1),projection_img_y(81:96,2),projection_img_y(81:96,3),'g')
plot3(projection_img_y(97:112,1),projection_img_y(97:112,2),projection_img_y(97:112,3),'g')
plot3(projection_img_y(113:151,1),projection_img_y(113:151,2),projection_img_y(113:151,3),'g')
plot3(projection_img_y(152:167,1),projection_img_y(152:167,2),projection_img_y(152:167,3),'g')

plot3(projection_img_z(1:16,1),projection_img_z(1:16,2),projection_img_z(1:16,3),'b')
plot3(projection_img_z(17:32,1),projection_img_z(17:32,2),projection_img_z(17:32,3),'g')
plot3(projection_img_z(33:80,1),projection_img_z(33:80,2),projection_img_z(33:80,3),'g')
plot3(projection_img_z(81:96,1),projection_img_z(81:96,2),projection_img_z(81:96,3),'g')
plot3(projection_img_z(97:112,1),projection_img_z(97:112,2),projection_img_z(97:112,3),'g')
plot3(projection_img_z(113:151,1),projection_img_z(113:151,2),projection_img_z(113:151,3),'g')
plot3(projection_img_z(152:167,1),projection_img_z(152:167,2),projection_img_z(152:167,3),'g')
%}


% rotate and printing img
rotate_img_x = rotate(points_arr,45,'x',15,2,7);
figure
hold on
plot3(rotate_img_x(1:16,1),rotate_img_x(1:16,2),rotate_img_x(1:16,3),'b')
plot3(rotate_img_x(17:32,1),rotate_img_x(17:32,2),rotate_img_x(17:32,3),'g')
plot3(rotate_img_x(33:80,1),rotate_img_x(33:80,2),rotate_img_x(33:80,3),'g')
plot3(rotate_img_x(81:96,1),rotate_img_x(81:96,2),rotate_img_x(81:96,3),'g')
plot3(rotate_img_x(97:112,1),rotate_img_x(97:112,2),rotate_img_x(97:112,3),'g')
plot3(rotate_img_x(113:151,1),rotate_img_x(113:151,2),rotate_img_x(113:151,3),'g')
plot3(rotate_img_x(152:167,1),rotate_img_x(152:167,2),rotate_img_x(152:167,3),'g')

rotate_img_y = rotate(points_arr,45,'y',15,2,7);
figure
hold on
plot3(rotate_img_y(1:16,1),rotate_img_y(1:16,2),rotate_img_y(1:16,3),'b')
plot3(rotate_img_y(17:32,1),rotate_img_y(17:32,2),rotate_img_y(17:32,3),'g')
plot3(rotate_img_y(33:80,1),rotate_img_y(33:80,2),rotate_img_y(33:80,3),'g')
plot3(rotate_img_y(81:96,1),rotate_img_y(81:96,2),rotate_img_y(81:96,3),'g')
plot3(rotate_img_y(97:112,1),rotate_img_y(97:112,2),rotate_img_y(97:112,3),'g')
plot3(rotate_img_y(113:151,1),rotate_img_y(113:151,2),rotate_img_y(113:151,3),'g')
plot3(rotate_img_y(152:167,1),rotate_img_y(152:167,2),rotate_img_y(152:167,3),'g')

rotate_img_z = rotate(points_arr,45,'z',15,2,7);
figure
hold on
plot3(rotate_img_z(1:16,1),rotate_img_z(1:16,2),rotate_img_z(1:16,3),'b')
plot3(rotate_img_z(17:32,1),rotate_img_z(17:32,2),rotate_img_z(17:32,3),'g')
plot3(rotate_img_z(33:80,1),rotate_img_z(33:80,2),rotate_img_z(33:80,3),'g')
plot3(rotate_img_z(81:96,1),rotate_img_z(81:96,2),rotate_img_z(81:96,3),'g')
plot3(rotate_img_z(97:112,1),rotate_img_z(97:112,2),rotate_img_z(97:112,3),'g')
plot3(rotate_img_z(113:151,1),rotate_img_z(113:151,2),rotate_img_z(113:151,3),'g')
plot3(rotate_img_z(152:167,1),rotate_img_z(152:167,2),rotate_img_z(152:167,3),'g')
