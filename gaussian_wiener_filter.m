clc; clear all; close all;
img = rgb2gray(imread('butterfly.jpg'));
subplot(1,4,1);imshow(img);title('original image');
%img = imread('cameraman.tif');
img_noised = imnoise(img, 'gaussian');
subplot(1,4,2);imshow(img_noised);title('noisy image');
h = fspecial('gaussian',18,3);
res = conv2(img, h, 'same');
%figure;imshow(res/255);

res1 = conv2(img_noised, h, 'same');
subplot(1,4,3);imshow(res1/255);title('gaussian-filtered');

img_wiener = wiener2(img_noised, [5,5]);
subplot(1,4,4); imshow(img_wiener);title('wiener-filtered');