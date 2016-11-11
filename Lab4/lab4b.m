redGamma = 1.8;
greenGamma = 2.0;
blueGamma = 2.2;
C = 1;

X = imread('Lena_color_256.tif');
Y = gammaCorrection(X, redGamma, greenGamma, blueGamma, C);

x = (0: 0.01: 1);
yRed = C*x.^redGamma;
yGreen = C*x.^greenGamma;
yBlue = C*x.^blueGamma;


subplot(1,3,1) ,imshow(X), title('Orig');
subplot(1,3,2) ,imshow(Y), title('Gamma');
subplot(1,3,3) 
plot(x,yRed,'LineWidth',1,'Color','red');  hold on;
plot(x,yGreen,'LineWidth',1,'Color','green');
plot(x,yBlue,'LineWidth',1,'Color','blue');

redGammaT = 1.2;
greenGammaT = 3.0;
blueGammaT = 1.8;
Y = gammaCorrection(X, redGammaT, greenGammaT, blueGammaT, C);
Z = gammaCorrection(X, 1/redGammaT, 1/greenGammaT, 1/blueGammaT, C);
Final = gammaCorrection(Z, redGammaT, greenGammaT, blueGammaT, C);
figure
subplot(2,2,1) ,imshow(X), title('Orig');
subplot(2,2,2) ,imshow(Y), title('No Gamma');
subplot(2,2,3) ,imshow(Z), title('Orig');
subplot(2,2,4) ,imshow(Final), title('Gamma');


