I = imread('Lena_color_256.tif');
YC = rgb2ycbcr(I);

Y = YC(:,:,1);
C1 = YC(:,:,2);
C2 = YC(:,:,3);

%subplot(2,2,1) ,imshow(I), title('Orig');
%subplot(2,2,2) ,imshow(Y), title('Y');
%subplot(2,2,3) ,imshow(C1), title('C1');
%subplot(2,2,4) ,imshow(C2), title('C2');

DownSampledC1 = down_sampling(C1,16);
DownSampledC2 = down_sampling(C2,16);
size(DownSampledC1)
C1 = up_sampling(DownSampledC1,16);
C2 = up_sampling(DownSampledC2,16);

NewI(:,:,1) = Y;
NewI(:,:,2) = C1;
NewI(:,:,3) = C2;
NewI = ycbcr2rgb(NewI);
subplot(1,2,1) ,imshow(NewI), title('New');
subplot(1,2,2) ,imshow(I), title('Orig');