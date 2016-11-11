function[Y] = gammaCorrection(X, gammaR, gammaG, gammaB, C)

Y = im2double(X);
Y(:,:,1) = arrayfun(@(x) C*x^gammaR,Y(:,:,1));
Y(:,:,2) = arrayfun(@(x) C*x^gammaG,Y(:,:,2));
Y(:,:,3) = arrayfun(@(x) C*x^gammaB,Y(:,:,3));

Y = im2uint8(Y);
