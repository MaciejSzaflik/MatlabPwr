function[H] = display_hsv(h, s ,v)
H = zeros(256,256,3);
H(:,:,1) = h;
H(:,:,2) = s;
H(:,:,3) = v;
H = hsv2rgb(H);
H(1,1,:)
imshow(H);
