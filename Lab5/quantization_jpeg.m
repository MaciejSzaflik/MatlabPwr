function B = quantization_jpeg( A )
B = zeros(8);
Q = getQ();
for c = 1:8
    for r = 1:8
        B(c,r) = round(A(c,r)/(Q(c,r)*getAlpha()));
    end
end

end

