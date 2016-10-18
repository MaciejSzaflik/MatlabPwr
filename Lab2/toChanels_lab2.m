[I,R,G,B] = toChanels('Lab2/resources/Spectrum.tif');

subplot(2,2,1) ,imshow(I) ,title('Input Image')
subplot(2,2,2) ,imshow(R) ,title('Red component (R)')
subplot(2,2,3) ,imshow(G) ,title('Green component (G)')
subplot(2,2,4) ,imshow(B) ,title('Blue component (B)')