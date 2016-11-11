function [ F ] = prepareFilter( M )

sumValue = sum(M(:)); 
if sumValue==0
    F = M;
else
    F = M/sumValue;
end

end

