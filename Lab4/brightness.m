function[I,K] = brightness(path,parameter)
I = imread(path);
J = im2double(I);
K = arrayfun(@(x) x+parameter,J);
K = im2uint8(K);