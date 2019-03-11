function [out] = make_squared_matrix(in,out_size_1,out_size_2)
    out = ones(3,out_size_1,out_size_2);
    counter = 1;
    for i = 1:out_size_1
        for j = 1:out_size_2
            out(1,i,j) = in(counter,1);
            out(2,i,j) = in(counter,2);
            out(3,i,j) = in(counter,3);
            counter = counter + 1;
        end
    end