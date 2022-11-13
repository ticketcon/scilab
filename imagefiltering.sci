clc;
clear;
I = rgb2gray(imread('111.jpg'));
I_noise=imnoise(I,'salt & pepper');
subplot(2,3,1);
title('original image')
imshow(I)

subplot(2,3,2);
title('noisy image')
imshow(I_noise)
flinear1=1/25*ones(5,5);
Ilinear1=imfilter(I_noise,flinear1);
subplot(2,3,3);
title('Linear average filtered ')
imshow(Ilinear1)
hsize=[5,5];
sigma=1;
flinear2=fspecial('gaussian',hsize,sigma );
Ilinear2=imfilter(I_noise,flinear2);
subplot(2,3,4);
title('Linear Gaussian Filtered')
imshow(Ilinear2)
fnonlinear=[3,3];
Inonlinear=immedian(I_noise,fnonlinear);
subplot(2,3,5);
title('Median Filtered(Non-Linear)')
imshow(Inonlinear)
