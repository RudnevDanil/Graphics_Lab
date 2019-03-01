function [arr_res] = rotate(arr,deg,size_x,size_y,mov_x,mov_y)
    deg = deg/57.2958;
    if nargin <= 4
        mov_x = 0;
        mov_y = 0;
    end
    arr = double(move(arr,-size_y/2,-size_x/2));
    action_matrix = [cos(deg) sin(deg) 0; -sin(deg) cos(deg) 0; mov_x*(1-cos(deg))+mov_y*sin(deg) mov_y*(1-cos(deg))-mov_x*sin(deg) 1];
    action_matrix = double(action_matrix);
    arr = double(arr);
    arr_res = double(arr * action_matrix);
    arr_res = double(move(arr_res,size_y/2,size_x/2));