function[I,R,G,B] = toChanels(path)
I = imread(path);
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);