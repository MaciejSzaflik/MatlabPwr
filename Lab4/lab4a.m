c = 1.5;
b = 0.2;
[IB,KB] = brightness('Lena_gray_8.tif',b);
[IC,KC] = contrast('Lena_gray_8.tif',c);

x = (0: 0.01: 1);
y0 = x;
y1 = x + b;

y2 = x;
y3 = c*x + (1 - c)*0.5;

subplot(2,3,1) ,imshow(IB), title('Orig');
subplot(2,3,2) ,imshow(KB), title(strcat('Brightness: ', num2str(b)));
subplot(2,3,3) 
plot(x,y0,'LineWidth',1,'Color','red');  hold on;
plot(x,y1,'LineWidth',1,'Color','blue');
subplot(2,3,4) ,imshow(IC), title('Orig');
subplot(2,3,5) ,imshow(KC), title(strcat('Contrast: ', num2str(c)));
subplot(2,3,6)
plot(x,y2,'LineWidth',1,'Color','red'); hold on;
plot(x,y3,'LineWidth',1,'Color','blue'); hold on;