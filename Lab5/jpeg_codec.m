function [mse, psnr, errorValue] = jpeg_codec( aVal, supress)
setAlpha(aVal);

I = imread('Lena_gray_8.tif');
J = double(I);

K = arrayfun(@(x) x - 128,J);

B = blkproc(K,[8,8],'dct2');
L = blkproc(B,[8,8],'quantization_jpeg');

errorValue = nnz(L)/(256*256);

deq = blkproc(L,[8,8],'dequantization_jpeg');
id =  blkproc(deq,[8,8],'idct2');

id2 = arrayfun(@(x) (x + 128)/255,id);
image = im2uint8(id2);
if supress
    figure
    subplot(1,2,1)
    imshow(I);
    subplot(1,2,2)
    imshow(image);
end

[mse, psnr] = mse_error(I,image);