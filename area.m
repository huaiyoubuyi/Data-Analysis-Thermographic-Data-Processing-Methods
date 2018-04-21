function [ F4 ] = area( F1 )
% this part aims to confrirm the defect area(mark as 1 while the rest are
% marked as 0)
%找缺陷位置（有缺陷的部分温度偏高）
F2=zeros(1,60);
F4=zeros(105,120);
for i=5:54
    F2(i)=mean(mean(F1.images{1,i}));
end
F3=zeros(12600,50);
for i=1:50
    for j=1:12600
    F3(j,i)=F1.images{1,i}(j);
    end
end
for i=1:12600
    count=0;
    for j=1:50
        if F3(i,j)-F2(j)>2
            count=count+1;
        end
    end
        if count>45
            F4(i)=1;
        end
end
        for i=121:12480
                if F4(i)==1
                    if F4(i+1)==0&&F4(i-1)==0 
                        if F4(i+120)==0&&F4(i-120)==0
                        F4(i)=0;
                        end
                    end
                end
                if F4(i)==0
                    if F4(i+1)==1&&F4(i-1)==1 
                        if F4(i+120)==1&&F4(i-120)==1
                        F4(i)=1;
                        end
                    end
                end
        end
     %           imagesc(F4);
end

