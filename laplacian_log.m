clc; clear all; close all;
img = rgb2gray(imread('butterfly.jpg'));
subplot(1,3,1);imshow(img);title('original image');

f = fspecial('laplacian');
lap = filter2(f,img);
subplot(1,3,2);imshow(lap);title('laplacian filter');

e = edge(img, 'log');
subplot(1,3,3);imshow(e);title('laplacian of gaussian filter');