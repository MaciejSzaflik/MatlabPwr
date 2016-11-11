function[H] = display_hsv(h, s ,v)
H = zeros(256,256,3);
H(:,:,1) = h;
H(:,:,2) = s;
H(:,:,3) = v;
H = hsv2rgb(H);
strcat('HSV H: ',num2str(h),' S: ',num2str(s),' V: ',num2str(v))
strcat('RGB R: ',num2str(H(1,1,1)),' G: ',num2str(H(1,1,2)),' B: ',num2str(H(1,1,3)))
