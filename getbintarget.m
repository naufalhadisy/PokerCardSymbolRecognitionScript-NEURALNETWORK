function T = getbintarget(A)
T(length(A),4)=0;          % 4 class

for i=1:length(A)
    if (A(i) == "C")
        T(i,1)=1;
    elseif (A(i) == "d")    
        T(i,2)=1;
    elseif (A(i) == "h")    
        T(i,3)=1;
    elseif (A(i) == "S")    
        T(i,4)=1;
    end

    
end