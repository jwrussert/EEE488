close all;
clear all;
home;

disp('Begin test script...')

WORKING_IMAGE_PATH = 'c:\Users\sysadmin\Desktop\NeilsDendrites.png';
%WORKING_IMAGE_PATH = 'C:\Users\sysadmin\Pictures\serveimage.png';
WORKING_IMAGE = imread(WORKING_IMAGE_PATH);
%WORKING_IMAGE = rgb2gray(WORKING_IMAGE);


figure(1)
imshow(WORKING_IMAGE);

histo = imgHistogram(WORKING_IMAGE);

figure(2)
plot(histo);


normedHisto = histNormalize(histo);

figure(3)
plot(normedHisto);

figure(4)
imshow(imgEqualize(WORKING_IMAGE))

disp('End test script...')