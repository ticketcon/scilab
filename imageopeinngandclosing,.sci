close;
clear;
clc;
//Importing the image
I = imread('C:\Users\Sidhant\Downloads\hh.jpg');
//Dilated Image
//X = eye(10,10);
dilate =imdilate(I, 15);
subplot(2,2,1),
imshow(dilate);
title('Dilated image');
//Eroded image
erode = imerode(I, 50);
subplot(2,2,2);
imshow(erode);
title('Eroded image');
//Opened image
open = imopen(I, 3);
subplot(2,2,3);
imshow(open);
title("Opened image");
//Closed image
close = imclose(I, 5);
subplot(2,2,4);
imshow(close);
title('Closed image');
