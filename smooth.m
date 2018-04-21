function [ F5 ] = smooth( F3 )
% this part aims to smooth the curve and reduce noise
    for j=1:105
        for k=1:120
            for i=1:60
                B(i)=F3.images{1,i}(j,k);
            end
            i=1:60;
                A=polyfit(i,B,4); % ployfit the curve 
            for i=1:60
                z=polyval(A,i);
                F5.images{1,i}(j,k)=z; % reconstructure the data
            end
        end
    end

end

