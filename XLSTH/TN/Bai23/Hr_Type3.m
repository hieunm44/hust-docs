function [Hr,w,c,L] = Hr_Type3(h) 
M = length(h); 
L = (M-1)/2; 
c = 2*h(L:-1:1); 
n = [1:1:L]; 
w = [0:1:500]'*pi/500; 
Hr = sin(w*n)*c'; 
end

