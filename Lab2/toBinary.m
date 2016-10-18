function[I,K] = toBinary(path,level)
I = imread(path);
J = im2double(I);
K = arrayfun(@(x) x > level,J);

