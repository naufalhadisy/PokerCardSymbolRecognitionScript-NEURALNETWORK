
function [A,O] = FExtraction(FList)
%S = 8100; % the size of features [90x90]  
 S=100;  %size 0f input node / features [10x10]
 A((length(FList)),S)=0;  % array of features 
 O((length(FList)),4)=0;  % array of target 

for i=1:length(FList)
  fn = FList(i).name; %file name
  % pre process the file
  [X,k] = PreProcess(fn);
  F = gridfeatures(k);
  A(i,:)=F;  
  t = getbintarget(fn(1));   % extract target from filename and changed into binary form
  O(i,:)=t';
  %pause;
end
end 