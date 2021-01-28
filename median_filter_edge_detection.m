clc; clear all; close all;
img = rgb2gray(imread('butterfly.jpg'));
isp = imnoise(img,'salt & pepper');
subplot(1,4,1);imshow(img);title('original image');
subplot(1,4,2);imshow(isp);title('noisy image');

a = fspecial('average');
h1 = filter2(a,isp);
subplot(1,4,3);imshow(uint8(h1));title('average filter');

h2 = medfilt2(isp);
subplot(1,4,4);imshow(h2);title('median filter');

e1 = edge(img,'prewitt');
e2 = edge(img,'canny');
e3 = edge(img,'sobel');
e4 = edge(img,'roberts');
figure; subplot(1,4,1);imshow(e1);title('prewitt filter');
subplot(1,4,2);imshow(e2);title('canny filter');
subplot(1,4,3);imshow(e3);title('sobel filter');
subplot(1,4,4);imshow(e4);title('roberts filter');
