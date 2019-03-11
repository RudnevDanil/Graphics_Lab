function [out] = make_points_matrix(in_x,in_y,in_z)
    counter = 1;
    sizes = size(in_x);
    out = ones(sizes(1)*sizes(2),4);
    for i = 1:sizes(1)
        for j = 1:sizes(2)
            out(counter,:) = [in_x(i,j),in_y(i,j),in_z(i,j),1];
            counter = counter + 1;
        end
    end