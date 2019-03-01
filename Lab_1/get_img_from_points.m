function [res_img] = get_img_from_points(points_arr,img_size_x,img_size_y)
    points_arr = int32(points_arr);
    am_of_points = int32(size(points_arr));
    amount_points = int32(am_of_points(1));
    res_img = int32(ones(img_size_x,img_size_y) * 255);
    for i = 1:amount_points(1)
        if (points_arr(i,1) >= 0)&&(points_arr(i,1) < img_size_x)&&(points_arr(i,2) >= 0)&&(points_arr(i,2) < img_size_y)
            res_img(int32(points_arr(int32(i),int32(1))),int32(points_arr(int32(i),int32(2)))) = 0;
        else
            sprintf('HIDEN !!! %5.2d  ___  %5.2d',points_arr(i,1),points_arr(i,2))
        end
    end
    res_img = uint8(res_img);