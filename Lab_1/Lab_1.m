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

img_without_changes = get_img_from_points(points_arr,img_sizes(1),img_sizes(2));

scaled_points = scale(points_arr,2,0.5,img_sizes(1),img_sizes(2));
scaled_img = get_img_from_points(scaled_points,img_sizes(1),img_sizes(2));

moved_points = move(points_arr,-50,70);
moved_img_1 = get_img_from_points(moved_points,img_sizes(1),img_sizes(2));

moved_points = move(moved_points,20,-100);
moved_img_2 = get_img_from_points(moved_points,img_sizes(1),img_sizes(2));

moved_points = move(moved_points,100,50);
moved_img_3 = get_img_from_points(moved_points,img_sizes(1),img_sizes(2));

moved_points = move(moved_points,-70,-50);
moved_img_4 = get_img_from_points(moved_points,img_sizes(1),img_sizes(2));

rotated_points = rotate(points_arr,45,img_sizes(1),img_sizes(2));
rotated_img_45 = get_img_from_points(rotated_points,img_sizes(1),img_sizes(2));

rotated_points = rotate(rotated_points,45,img_sizes(1),img_sizes(2));
rotated_img_135 = get_img_from_points(rotated_points,img_sizes(1),img_sizes(2));

rotated_points = rotate(rotated_points,45,img_sizes(1),img_sizes(2));
rotated_img_225 = get_img_from_points(rotated_points,img_sizes(1),img_sizes(2));

rotated_points = rotate(rotated_points,45,img_sizes(1),img_sizes(2));
rotated_img_315 = get_img_from_points(rotated_points,img_sizes(1),img_sizes(2));

rotated_points = rotate(rotated_points,180,img_sizes(1),img_sizes(2));
rotated_img_360 = get_img_from_points(rotated_points,img_sizes(1),img_sizes(2));



rotated_points = rotate(scale(points_arr,0.7,0.5,img_sizes(1),img_sizes(2)),60,img_sizes(1),img_sizes(2),50,90);
moved_4_rotated_60 = get_img_from_points(rotated_points,img_sizes(1),img_sizes(2));

%imshow(img_without_changes)
%imshowpair(img_without_changes,rotated_img,'blend');

subplot(3,4,1), subimage(moved_img_1);
subplot(3,4,2), subimage(moved_img_2);
subplot(3,4,3), subimage(moved_img_3);
subplot(3,4,4), subimage(moved_img_4);
subplot(3,4,5), subimage(rotated_img_45);
subplot(3,4,6), subimage(rotated_img_135);
subplot(3,4,7), subimage(rotated_img_225);
subplot(3,4,8), subimage(rotated_img_315);
subplot(3,4,9), subimage(rotated_img_360);
subplot(3,4,10), subimage(scaled_img);
subplot(3,4,11), subimage(img_without_changes);
subplot(3,4,12), subimage(moved_4_rotated_60);

