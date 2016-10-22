I = imread('Lab2/resources/Lena_color_256.tif');
[J,map] = rgb2ind(I,0.3);
[K,map_2] = rgb2ind(I,34);

figure
imshow(J,map) ,title('Uniform 0.3');
figure
imshow(K,map_2) ,title('Variance 34');