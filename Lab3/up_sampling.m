function [Y] = up_sampling(X,num)
    
   [n, m ] = size(X);
   newN = n*num;
   newM = m*num; 
   Y = zeros(newN,newM);
   for i = 1:newN;
      for j = 1:newM;
        Y(i,j) = X(max(1,floor(i/num)),max(1,floor(j/num)));
      end 
   end
   
