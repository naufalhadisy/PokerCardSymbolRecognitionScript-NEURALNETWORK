function O = NNTest(net,D,T)

Data = D';
Target = T';
[x1,y1] = size(Data);   % x1 is the number of features / input node
[x2,y2] = size(Target); % x2 is the number of output node
                        % y1 & y2 are number of patterns
cnt = 0;  %counter for correct answer
cw = 0;    %counter for wrong answer

% temp = reshape(D(1,:),10,10)
% imshow(temp);
%confusion matrix
D = zeros(x2);
for i=1:y1
    a = sim(net,Data(:,i))
    Out = find(a==max(a))
    for j=1:4 %4class
       %Target(i,j)
      if (Target(j,i)==1)
          Tgt = j
      end
    end  
    
    if (Out == Tgt)
        %disp('right'); 
        cnt=cnt+1;
    else
        %disp('wrong');
        cw=cw+1;
    end
     
     D(Tgt,Out)=D(Tgt,Out)+1;
    %pause;
end

O = (cnt/y2)*100;
disp('wrong rate : ');
(cw/y2)*100
D
size(D)
end