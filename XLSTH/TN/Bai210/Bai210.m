% Chi tieu ky thuat cua bo loc so: 
wp =0.2*pi; % digital Passband freq in Hz 
ws =0.3*pi; % digital Stopband freq in Hz 
Rp = 1; % Passband ripple in dB 
As = 15; % Stopband attenuation in dB 
% Chi tieu ky thuat cua bo loc tuong tu: Anh xa nguoc 
T = 1; Fs =1/T; % Dat T=1 
OmegaP = (2/T)*tan(wp/2); 
OmegaS = (2/T)*tan(ws/2); 
% Tinh toan bo loc tuong tu: 
[cs, ds] = afd_chb1(OmegaP,OmegaS,Rp,As); 
% Bien doi song tuyen: 
[b,a] = impinvar(cs,ds,Fs); 
% 
[db,mag,pha,grd,w] = freqz_m(b,a); 
%plot 
figure(37); clf; 
% 
subplot(2,2,1); plot(w/pi,mag); 
axis([0,1,0,1.2]); grid 
title('Amplitude Response'); 
xlabel('frequency in pi units'); ylabel('|Hr(w)|'); 
% 
subplot(2,2,3); plot(w/pi,db); 
axis([0,1,-30,10]); grid 
title('Magnitude Response'); 
xlabel('frequency in pi units'); ylabel('Decibels'); 
% 
subplot(2,2,2); plot(w/pi,pha/pi); 
axis([0,1,-1,1]); grid 
title('Phase Response'); 
xlabel('frequency in pi units'); ylabel('Angle(Hr(w))'); 
% 
subplot(2,2,4); plot(w/pi,grd); 
axis([0,1,0,15]); grid 
title('Group Delay'); 
xlabel('frequency in pi units'); ylabel('Samples');
