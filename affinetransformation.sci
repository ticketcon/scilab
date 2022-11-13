clc ;
clear; close;
I =imread('Baby.jpg');
[m,n] = size (I);
for i = 1:m
for j =1: n
// S c a l i n g
J(2*i,2*j) = I(i,j);
// Ro t a t i on
p = i*cos(%pi/2)+j*sin(%pi/2);
q = -i*sin(%pi/2)+j*cos(%pi/2);
p = ceil(abs(p)+0.0001);
q = ceil(abs(q)+0.0001);
K(p,q)= I(i,j);
// s h e a r t r a n s f o rma t i o n
u = i +0.2*j;
v = j;
L(u,v)= I(i,j);
end
end
subplot(2,2,1);
title('Original image');
imshow(I);
subplot(2,2,2);
title('Scaled image');
imshow(J);
subplot(2,2,3);

title('Rotated image');
imshow(K);
subplot(2,2,4);
title('Shear transformed (X-direction) image');
imshow(L);
