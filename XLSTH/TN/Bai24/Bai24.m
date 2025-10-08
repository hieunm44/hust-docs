h = [-4,1,-1,-2,5,6,-6,-5,1,2,-1,4]; 
M = length(h); n =0:M-1; 
[Hr,w,d,L] = Hr_Type4(h); 
d, L 
amax = max(d)+1; amin = min(d)-1; 
% 
subplot(2,2,1); stem(n,h); 
axis([-1,2*L+1,amin,amax]); 
title('Impulse Response'); 
xlabel('n'); ylabel('h(n)'); 
% 
subplot(2,2,3); stem(1:L,d); 
axis([-1,2*L+1,amin,amax]); 
title('d(n) coefficients'); 
xlabel('n'); ylabel('d(n)'); 
% 
subplot(2,2,2); plot(w/pi,Hr); grid; 
title('Type-1 Amplitude Response'); 
xlabel('frequency in pi units'); ylabel('Hr'); 
% 
subplot(2,2,4); zplane(h,1);
