function [  ] = judge( mean_depth,n )
if mean_depth<0.02
    if n<700
        fprintf('This one is qualified!\n');
    end
else
    fprintf('This one is unqualified!\n');
end
end

