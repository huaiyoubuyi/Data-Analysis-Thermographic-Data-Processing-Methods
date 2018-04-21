function [ F2 ] = standardlize( F1 )
% this part means to guiyihua matrix
for i = 1:60
rows = reshape(F1.images{1,i},105*120,1);
v(i) = std(rows);
m(i) = mean(rows);%calculate the mean and var
    for j = 1:105
        for k = 1:120
              F2.images{1,i}(j,k)=(F1.images{1,i}(j,k)-m(i))/v(i);
        end
    end
end
end

