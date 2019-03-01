function [arr_res] = rotate(arr,deg,which_axis,size_x,size_y,size_z)
    deg = deg/57.2958;
    arr = double(move(arr,-size_x/2,-size_y/2,-size_z/2));
    action_matrix = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
    if which_axis == 'x'
        action_matrix = [1 0 0 0; 0 cos(deg) -sin(deg) 0; 0 sin(deg) cos(deg) 0; 0 0 0 1];
    elseif which_axis == 'y'
        action_matrix = [cos(deg) 0 sin(deg) 0; 0 1 0 0; -sin(deg) 0 cos(deg) 0; 0 0 0 1];
    elseif which_axis == 'z'
        action_matrix = [cos(deg) -sin(deg) 0 0; sin(deg) cos(deg) 0 0; 0 0 1 0; 0 0 0 1];
    else
        disp('rotate ERROR !!!');
    end
    action_matrix = double(action_matrix);
    arr = double(arr);
    arr_res = arr * action_matrix;
    
    action_matrix = double(action_matrix);
    arr = double(arr);
    arr_res = double(arr * action_matrix);
    arr_res = double(move(arr_res,size_x/2,size_y/2,size_z/2));