function [ F4 ] = leastquares( F2 ) %this part aims to reduce noise

t = 8;%参数lamda
%F2 = TSR(F2,60);%TSR
%F2 = smooth(F1);%平滑

I = eye(105,105);
D = matrix1(104);%生成D矩阵：105*104
D1 = D'; %转置
A = inv(I + t*D1*D);%求逆
for i = 1:60
    for k = 1:120 
z = F2.images{1,i}(:,k);%取第一张第K列
F3.images{1,i}(:,k) = A*z; %变换
    end
end
% 按列变换

I = eye(120,120);
D = matrix1(119);
D1 = D';
A = inv(I+t*D1*D);
for i = 1:60
    for k = 1:105 
z = F3.images{1,i}(k,:);
F4.images{1,i}(k,:)= z*A;
    end
end
%按行变换
%imagesc(F4.images{1,22});
%plot_gif(F4);
end

