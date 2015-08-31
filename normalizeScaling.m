function [ndata] = normalizeScaling(tempData, a, b)
%   Detailed explanation goes here
[x y]=size(tempData);

%initialize a new normalized dataset
ndata = zeros(x,y);

    umin = min(tempData);
    umax = max(tempData);
    
    if(b>a)
        for j = 1:x
            ndata(j)= a + (((tempData(j) - umin)*(b-a))/(umax-umin));
        end
    end
end