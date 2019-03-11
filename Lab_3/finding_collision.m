function [out] = finding_collision(obj_1, obj_2)
    %out = ones(3,out_size_1,out_size_2);
    sizes_1 = size(obj_1);
    sizes_2 = size(obj_2);
    out_counter = 1;
    out = ones(1,3);
    const = 0.03;
    for i = 1:sizes_1(1)
        for j = 1:sizes_2(1)
            if (abs(obj_1(i,1)-obj_2(j,1)) < const) && (abs(obj_1(i,2)-obj_2(j,2)) < const) && (abs(obj_1(i,3)-obj_2(j,3)) < const)
                out(out_counter,:) = obj_2(j,1:3);
                out_counter = out_counter + 1;
                break;
            end            
        end
    end