clc ;
clear ;
close;
I = imread('C:\Users\Sidhant\Downloads\hh.jpg');
I_noise = imnoise(I, 'salt & pepper');
subplot(2,2,1);
imshow(I);
title('Original Lenna Image');
subplot(2,2,2);
imshow(I_noise)
title('Noisy Lenna Image');
//Case 1 : Li n e a r F i l t e r i n g
// Li n e a r F i l t e r i n g −Example 1 : Average F i l t e r
F_linear1 = 1/25*ones(5,5); // 5 x5 mask
I_linear1 = imfilter(I_noise, F_linear1 );
// l i n e a r f i l t e r i n g −Average F i l t e r
subplot(2,2,3);
imshow(I_linear1);
title('Linear Average Filtered Noisy Lenna Image');
// ( i i ) . Li n e a r F i l t e r i n g − Example 2 : Gaussian filter,
hsize=[5,5]; sigma=1;
F_linear2 = fspecial('gaussian', hsize, sigma);
// Li n e a r f i l t e r i n g − g a u s s i a n F i l t e r

I_linear2 = imfilter(I_noise, F_linear2);
subplot(2,2,4);
imshow(I_linear2);
title('Linear Gaussian Filtered Noisy Lenna Image');

//Case 2 : Non−Li n e a r F i l t e r i n g
// ( i ) . Median F i l t e r i n g
F_NonLinear=[3,3];
I_NonLinear = immedian(I_noise, F_NonLinear);
// Median F i l t e r 3 x3
figure,
imshow(I_NonLinear);
title('Median Filtered (Non−Linear) Noisy Lenna Image');
