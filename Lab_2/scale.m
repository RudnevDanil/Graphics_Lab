function [arr_res] = scale(arr,x,y,z,size_x,size_y,size_z)
    arr = double(move(arr,-size_x/2,-size_y/2,-size_z/2));
    action_matrix = [x 0 0 0; 0 y 0 0; 0 0 z 0; 0 0 0 1];
    action_matrix = double(action_matrix);
    arr = double(arr);
    arr_res = arr * action_matrix;
    arr_res = double(move(arr_res,size_x/2,size_y/2,size_z/2));
    