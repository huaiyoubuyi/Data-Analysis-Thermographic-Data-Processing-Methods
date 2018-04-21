function [ a ] = matrix1( n )
% to create a matrix according to the rules discovered
a = zeros(n,n+1);
for i=1:n
   a(i,i) = -1; 
end
for i=1:n
    a(i,i+1) = 1;
end

end

