% Chi tieu ky thuat cua bo loc tuong tu: Chebyshev-I
wp =0.2*pi; % digital Passband freq in Hz 
ws =0.3*pi; % digital Stopband freq in Hz 
Rp = 1; % Passband ripple in dB 
As = 15; % Stopband attenuation in dB 
% Tinh toan bo loc tuong tu: 
[b,a] = afd_chb1(wp,ws,Rp,As)
% 
[db,mag,pha,w] = freqs_m(b,a,pi/2); 
[h,x,t] = impulse(b,a)
%plot 
figure(37); clf; 
% 
subplot(2,2,1); plot(w/pi,mag); 
axis([0,0.5,0,1.2]); grid 
title('Amplitude Response'); 
xlabel('frequency in pi units'); ylabel('|Hr(w)|'); 
% 
subplot(2,2,3); plot(w/pi,db); 
axis([0,0.5,-30,10]); grid 
title('Magnitude Response'); 
xlabel('frequency in pi units'); ylabel('Decibels'); 
% 
subplot(2,2,2); plot(w/pi,pha/pi); 
axis([0,0.5,-1,1]); grid 
title('Phase Response'); 
xlabel('frequency in pi units'); ylabel('Angle(Hr(w))'); 
% 
subplot(2,2,4); plot(h); 
axis([0,100,-0.1,0.3]); grid 
title('Impulse Response'); 
xlabel('time in seconds'); ylabel('h(t)'); 
