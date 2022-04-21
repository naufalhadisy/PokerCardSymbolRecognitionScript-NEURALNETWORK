
% 1. read the file
% 2. convert to binary
% 3. Apply median filter of size [9x9]
% 4. resize the image to [100x100]. 
%
% F is the file to be pre-process


function [X,k] = PreProcess(F)
%read the file
%A = imread('E:\USER\Documents\MATLAB\Project_Burjo\Train\Club22.jpg');
A = imread(F);
%convert to grayscale
%  level = graythresh(A);
%  BW = im2gray(level);

% do thresholding and convert to binary
level = graythresh(A);
BW = im2bw(A,level);



%   subplot(221);imshow(A);title('original image');
%   subplot(222);imshow(BW);title('grayscale image');

%apply filter
% J = imadjust(BW);
% N = medfilt2(J,[9 9]);
%  subplot(223);imshow(J);title('applying filter size');


% resized
k=imresize(BW,[100 100]);
% subplot(224);imshow(k); title('resize to 100x100');

X = reshape(k,[],100*100);
end







