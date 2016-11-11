gauss = prepareFilter([2 4 2;4 8 4;2 4 2]);
upper = prepareFilter([-1 -1 -1;-1 9 -1;-1 -1 -1]);
edge = prepareFilter([-1 -1 -1;-1 8 -1;-1 -1 -1]);
lap = prepareFilter([0 -1 0;-1 4 -1;0 -1 0]);

X = imread('Lena_color_256.tif');
Y = imfilter(X,gauss);

subplot(2,3,1) ,imshow(X), title('Orig');
subplot(2,3,2) ,imshow(imfilter(X,gauss)); title('Gauss');
subplot(2,3,3) ,imshow(imfilter(X,upper)); title('Upper');
subplot(2,3,4) ,imshow(imfilter(X,edge)); title('Edge');
subplot(2,3,5) ,imshow(imfilter(X,lap)); title('Lap');