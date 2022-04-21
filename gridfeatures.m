%gridfeatures function to extract based on binary grid
% for 100x100 image = 10x10 grid = 100features

function out = gridfeatures(k)
 [x,y]= size(k);
 N=10;
 z = zeros(N);
 ind=1;
 for i=1:N-1
     for j=1:N
          r =sum(sum(k(((j*N)-N)+1:(j*N),((i*N)-N)+1:(i*N))));
        if((r/100)> 0.3) 
            z(j,i)=1;
        else
            z(j,i)=0;
        end
     end    
 end
 
% subplot(121);imshow(k);title('100x100 image');
% subplot(122);imshow(z);title('grid 10x10 image');
out = reshape(z,[],N*N);



end