function [arr_res] = projection(arr,which_axis)
    action_matrix = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
    if which_axis == 'x'
        action_matrix = [0 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
    elseif which_axis == 'y'
        action_matrix = [1 0 0 0; 0 0 0 0; 0 0 1 0; 0 0 0 1];
    elseif which_axis == 'z'
        action_matrix = [1 0 0 0; 0 1 0 0; 0 0 0 0; 0 0 0 1];
    else
        disp('projection ERROR !!!');
    end
    action_matrix = double(action_matrix);
    arr = double(arr);
    arr_res = arr * action_matrix;
    