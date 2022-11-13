clc ;
clear;
close;
img= imread ('');
subplot(2,2,1);
title('Original image');
imshow(img);
img=rgb2gray(img);
[count,cells ]= imhist (img);
subplot(2,2,2);
plot2d3 ('gnn' , cells , count )
title('Histogram plot for original image');
Iheq = imhistequal(img);
[count,cells ]= imhist (Iheq);
subplot(2,2,3);
title('Histogram Equalized image');
imshow(Iheq);
subplot(2,2,4);
plot2d3 ('gnn' , cells , count )
title('Histogram plot for histogram equalized image');
