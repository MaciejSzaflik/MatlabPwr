function[D] = display_rgb(r, g ,b)
D = zeros(256,256,3);
D(:,:,1) = r;
D(:,:,2) = g;
D(:,:,3) = b;
imshow(D);
title(strcat('RGB R: ',num2str(r),' G: ',num2str(g),' B: ',num2str(b)));
