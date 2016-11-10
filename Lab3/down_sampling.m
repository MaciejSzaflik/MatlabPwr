function [Y] = down_sampling(X,num)
    
    [n, m ] = size(X);
    
    k = 1;
    l = 1;
    
    for i = 1:n
       if mod(i,num)==0 
            for j = 1:m
                if mod(j,num) == 0
                   Y(k, l) = X(i, j);
                   l = l+1;
                end
            end
         k = k+1;
         l = 1;
        end
     end
