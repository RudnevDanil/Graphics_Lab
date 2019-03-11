function [arr_res] = move(arr,x,y,z)
    action_matrix = [1 0 0 0; 0 1 0 0; 0 0 1 0; x y z 1];
    action_matrix = double(action_matrix);
    arr = double(arr);
    arr_res = arr * action_matrix;