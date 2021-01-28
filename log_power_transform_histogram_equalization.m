clc; clear all; close all;
x = imread('butterfly.jpg');
%display all channels
r = x(:,:,1);
g = x(:,:,2);
b = x(:,:,3);
%imshow([r g b]);

%log and power transformations
imd=im2double(x);
imlog=2*log(1+imd);
impow=2*imd.^0.02;
imshow(imlog);title('log transformed');
figure;imshow(impow);title('power transformed');

%histogram stretching and equalization
imad=imadjust(rgb2gray(x));
%imshow(imad);
imheq=histeq(x);
%imshow(imheq);
figure
subplot(1,3,1);imhist(x);title('original');
subplot(1,3,2);imhist(imad);title('adjusted');
subplot(1,3,3);imhist(imheq);title('equalized histogram');

figure
subplot(1,3,1);imshow(x);title('original image');
subplot(1,3,2);imshow(imad);title('adjusted image');
subplot(1,3,3);imshow(imheq);title('equalized histogram image');