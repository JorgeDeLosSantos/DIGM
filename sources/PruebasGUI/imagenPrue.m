clear all;clc;
A=rgb2gray(imread('ITTG.PNG'));
B=im2bw(A,0.2);
imagesc(A)

% subplot(2,2,1)
% imshow(A);
% subplot(2,2,2)
% imshow(B);
% subplot(2,2,3)
% subplot(2,2,4)