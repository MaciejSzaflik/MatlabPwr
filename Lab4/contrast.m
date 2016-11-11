function[I,K] = contrast(path,parameter)
I = imread(path);
J = im2double(I);
K = arrayfun(@(x) parameter*x + (1 - parameter)*0.5,J);
K = im2uint8(K);