function [arr_res] = move(arr,x,y)
    action_matrix = [1 0 0; 0 1 0; x y 1];
    action_matrix = double(action_matrix);
    arr = double(arr);
    arr_res = int32(arr * action_matrix);