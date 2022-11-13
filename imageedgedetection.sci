close ;
clear ;
clc ;
img = imread('C:\Users\Sidhant\Downloads\hh.jpg');
// Reads input image shapes.jpg
img = rgb2gray(img);
// Converts input image to gray scale
clf
// Clears figure handle
subplot(2,2,1);
imshow(img);
title('Gray scale image');
e=edge(img);//This performs edge detection operation with sobel, threshold =0.5
subplot(2,2,2);
imshow(e)
title('sobel filter');

e = edge(img, 'prewitt'); // threshold=0.5
// Applied prewitt edge detection method
subplot(2,2,3);;
imshow(e)
title('Prewitt image');
e = edge(img,'canny', [0.06 0.2]);
// Applies canny edge detection method

subplot(2,2,4);
imshow(e)
title('canney filter');
e = edge(img, 'fftderiv', 0.4) ;
// Applies FFT gradient method ; 0.4 threshold
figure;
imshow(e)
title('FFT image');
