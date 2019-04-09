function M = evenoddmerge(E,O)
Ne = size(E,1);
No = size(O,1);
Ce = size(E,2);
Co = size(O,2);
if(Ce==Co && Ne<=No)
    M  = zeros(Ne+No,Co);
    for i=1:Ne
        M(2*i,:)=E(i,:);
    end
    for i=1:No
        M(2*i-1,:)=O(i,:);
    end
else
    if(Ce~=Co)
       error('No. of columns of both inputs must be same')
    elseif(Ne>=No)
       error('No. of rows of First input cannot be greater than second input')
    end    
end