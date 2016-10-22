D = display_rgb(0.9,0.9,0.17);
H = display_hsv(0.34,0.83,0.77);
T = display_hsv(0.02,0.9,0.67);
R = display_rgb(0.67,0.1394,0.067);

subplot(2,2,1) ,imshow(D), title('Rgb 0.67 0.17 0.17');
subplot(2,2,2) ,imshow(H), title('Hsv 0.34 0.83 0.77');
subplot(2,2,3) ,imshow(T), title('Pwr HSV 0.02,0.9,0.67');
subplot(2,2,4) ,imshow(R), title('Pwr RGB 0.67,0.1394,0.067');