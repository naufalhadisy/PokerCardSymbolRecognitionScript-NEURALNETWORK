%sample call function to run NN
% 1. SelectFile(D,N) will select the files to be trained
% 2. FExtraction(d) will do the pre-processing and features extraction of
% the selected files / patterns with the target. The otput will be matric
% for training and target output
%
% Md Sah Nov 2019



%Train the NN using Train Patterns
%D = 'C:\RESEARCH\pattern\fingers\train\*.png';

%CHANGE FILE DIRECTORY TO YOUR OWN FOLDER
D = 'E:\USER\Documents\MATLAB\Project_Burjo\Train\*.jpg';
d1 = SelectFile(D,329);   %329 File in train
[Dat,Trgt] = FExtraction(d1);
net = NNTrain(Dat,Trgt);

%Test NN using Test Patterns
%D = 'C:\RESEARCH\pattern\fingers\test\*.png';
D = 'E:\USER\Documents\MATLAB\Project_Burjo\Test\*.jpg';
d2 = SelectFile(D,79);   %79 test file
[Data,Target] = FExtraction(d2);
O = NNTest(net,Data,Target);
disp('recognition rate is : '); 
disp(O);

