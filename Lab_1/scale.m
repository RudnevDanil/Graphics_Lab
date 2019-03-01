function [arr_res] = scale(arr,x,y,size_x,size_y)
    action_matrix = [x 0 0; 0 y 0; 0 0 1];
    action_matrix = double(action_matrix);
    arr = double(move(arr,-size_y/2,-size_x/2));
    arr = double(arr);
    arr_res = int32(arr * action_matrix);
    arr_res = double(move(arr_res,size_y/2,size_x/2));