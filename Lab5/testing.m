testCount = 20;
results = zeros(3,testCount);
for testVal = 1:testCount
    [mse, psnr, errorValue] = jpeg_codec(testVal,false);
    results(1,testVal) = mse;
    results(2,testVal) = psnr;
    results(3,testVal) = errorValue;
end
x = (1: 1: testCount);
subplot(1,3,1) ,plot(x,results(1,:),'LineWidth',1,'Color','red'),title('mse');
subplot(1,3,2) ,plot(x,results(2,:),'LineWidth',1,'Color','blue'),title('psnr');
subplot(1,3,3) ,plot(x,results(3,:),'LineWidth',1,'Color','green'),title('nnz');

jpeg_codec(5,true)