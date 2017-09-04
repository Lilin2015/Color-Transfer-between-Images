clear;
close all;

img_in = imread('img_in.png');
img_guide = imread('img_guide.png');
img_out = colorTransfer(img_in,img_guide);

figure;
subplot(1,3,1);imshow(img_in);title('in');
subplot(1,3,2);imshow(img_guide);title('guide');
subplot(1,3,3);imshow(img_out);title('out');