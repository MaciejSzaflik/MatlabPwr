function B = dequantization_jpeg( A )

Q = getQ();
B = zeros(8);
for c = 1:8
    for r = 1:8
        B(c,r) = A(c,r)*Q(c,r)*getAlpha();
    end
end

end

