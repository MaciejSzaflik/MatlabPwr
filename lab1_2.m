X = imread('Lena_2.tif');
[n,m] = size(X);
B = zeros(n,m, 'uint8');
B = arrayfun(@reversePixel,X);

histX = histeq(X);
histB = histeq(B);

subplot(2,2,1);
imshow(X);
subplot(2,2,2);
imhist(histX);
subplot(2,2,3);
imshow(B);
subplot(2,2,4);
imhist(histB);
