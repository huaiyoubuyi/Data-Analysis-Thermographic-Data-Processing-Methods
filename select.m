function [ b ] = select( F4 )
%this part select one picture from 60 which contains the most information for further research
a=zeros(1,60);
for i = 1:60
    sum=mean(F4.images{1,i});
    for j = 1:105
        for k = 1:120
            if F4.images{1,i}(j,k)> sum+2.4;
             a(i)=a(i)+1; %record the summit value
            end
        end
    end
end
c=zeros(1,60);
for i = 1:60
    sum=mean(F4.images{1,i});
    for j = 1:105
        for k = 1:120
            if F4.images{1,i}(j,k)< sum-2;
             c(i)=c(i)+1; %record the summit value
            end
        end
    end
end
for i = 1:60
    d(i)=a(i)+c(i);
end
b = 2; %select the first according to the summit value
for i = 1:59
    if d(b)<d(i+1)
        b = i+1;
    end
end
end

