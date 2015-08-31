function [ out ] = reversescore( input )
%REVERSCORE Summary of this function goes here
%   Detailed explanation goes here
if(input == 1)
    out = 5;
elseif(input == 2)
    out = 4;
elseif(input == 3)
    out = 3;
elseif(input == 4)
    out = 2;
else
    out = 1;
end

