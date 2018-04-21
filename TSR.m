function F2=TSR(F1,t)
[m,n]=size(F1.images{1,1});
F2=F1;
for i=1:m*n
    derT=zeros(1,t);
    ldT=zeros(1,t);
    lnt=log(1:t);
    for j=10:t
        derT(j)=abs(F1.images{1,1}(i)-F1.images{1,j}(i))+1;
        ldT(j)=log(derT(j));
    end
   [plFit, Error, mu] = polyfit(lnt(10:t),ldT(10:t),5);
     esT = polyval(plFit,lnt,Error,mu);
    for j=10:t
        F2.images{1,j}(i)=F1.images{1,1}(i)-exp(esT(j));
    end
end
end

        
    

