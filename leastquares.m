function [ F4 ] = leastquares( F2 ) %this part aims to reduce noise

t = 8;%����lamda
%F2 = TSR(F2,60);%TSR
%F2 = smooth(F1);%ƽ��

I = eye(105,105);
D = matrix1(104);%����D����105*104
D1 = D'; %ת��
A = inv(I + t*D1*D);%����
for i = 1:60
    for k = 1:120 
z = F2.images{1,i}(:,k);%ȡ��һ�ŵ�K��
F3.images{1,i}(:,k) = A*z; %�任
    end
end
% ���б任

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
%���б任
%imagesc(F4.images{1,22});
%plot_gif(F4);
end

