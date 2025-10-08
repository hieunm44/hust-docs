n = -1:3; x = 1:5;
w = [0:1:500]*pi/500;  
% x(n) = rect7(n);
X = (1 - exp(-7j * w)) ./ (1 - exp(-j*w));
magX = abs(X); angX = angle(X); 
realX = real(X); imagX = imag(X); 
% Bat dau ve do thi
subplot(2,2,1); plot(w / pi,magX); grid; 
title('Magnitude Part'); xlabel('frequency in pi units'); 
ylabel('Magnitude'); 
subplot(2,2,3); plot(w / pi,angX); grid; 
title('Angle Part'); xlabel('frequency in pi units'); 
ylabel('Radians'); 
subplot(2,2,2); plot(w / pi,realX); grid; 
title('Real Part'); xlabel('frequency in pi units'); 
ylabel('Real'); 
subplot(2,2,4); plot(w / pi,imagX); grid; 
title('Imaginary Part'); xlabel('frequency in pi units'); 
ylabel('Imaginary'); 
