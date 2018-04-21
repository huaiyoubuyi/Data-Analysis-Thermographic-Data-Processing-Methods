function [ mean_depth ] = depth( F1,F5  ) 
% this function aims to estimate the actual depth of each part
   n=sum(sum(F5));

    mean_value = zeros(1,60);
    for i = 1:60
        mean_value(i) = mean(mean(F1.images{1,i})); % get the mean temperature value
    end
    mean_value1=mean(mean_value);
summ = 0;
for row=1:105
    for column=1:120
        
    if F5(row,column)==1   
        B=zeros(1,60);
        for i = 1:60
            b = F1.images{1,i}(row,column);
            B(i) = (b-mean_value1)/mean_value1;
        end   % calculate the contrast between the temperature in defective region and average value

    i = 1:1:60;
    A=polyfit(i,B,3);
    z=polyval(A,i);
    i = 1:1:59;
    dp = polyder(z); % get the first order derivation
    
    X=polyfit(i,dp,3);
    j = 0.001:0.001:59;
    u=polyval(X,j);  % ÄâºÏÇúÏß
    
    t=1;
    for k=1:1:59000
        if u(k)>u(t) 
            t=k;
        end
    end
    peak_time = t/10000; % seek the peak_time
    
    %plot(i,dp,'r*');
    %hold on;
    %plot(j,u,'b');  % output the curve
    
    summ = summ + sqrt(peak_time)*1.1281;  % estimate the depth of picture q
        
    end
    end
end
mean_depth = summ/n;
% according to the forfulation on the paper,the depth and peak time conform to such a relationship
% depth(i) = 1.1281*sqrt(time(i));
 fprintf('The depth is %d.\n',mean_depth);
 judge(mean_depth,n);
end

