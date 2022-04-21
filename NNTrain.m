function net = NNTrain(data,target)
rand('seed',3239);

[x1,y1] = size(data);   % y1 is the number of features / input node
[x2,y2] = size(target); % y2 is the number of output node

s1=y1; %neurons in the hidden layer use 
s2=y2; %output layer representing the number of class

a = [0 1]; % max and min value
b=repmat(a,y1,1);   % row represent the length of input


net=newff(b,[s1,s2],{'tansig','purelin'},'traingda');

%to set up the frequency of the training progress to be displayed,
% maximum number of epochs, acceptable error,learning rate and momentum rate. 

net.trainParam.show=1;      % Number of epochs between showing the progress
net.trainParam.epochs=1600; % Maximum number of epochs
net.trainParam.goal=0.001;  % Performance goal
net.trainParam.lr=0.5;      % Learning rate
net.trainParam.lr_inc=1.05; % Learning rate increase multiplier
net.trainParam.lr_dec=0.7;  % Learning rate decrease multiplier
net.trainParam.mc = 0.9;    % Momentum constant

%train the back-propagation network with adaptive learning rate. 
net=train(net,data',target');
% F1 ='./File/';  
 %save the train weight to test later
%save(-v7.3, [F1 'net.mat'],'net');
%save -v7.3 'net.mat' 'net';


%testdigitNN(net);
disp('end of training')

% F1 ='./files/';  
% %save the train weight to test later
% save([F1 'net.mat'],'net');
% %see whether the network has learned operation.
% 
% Yt=sim(net,Xt);
% 
% %save the result for analysis
% save('./files/Ynet-set1.mat','Yt');
