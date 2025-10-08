wp = 0.2*pi; ws =0.3*pi; Rp = 0.25; As = 50; 
delta_w = 2*pi/1000; 
wsi = ws/delta_w+1; 
delta1 = (10^(Rp/20)-1)/(10^(Rp/20)+1); 
delta2 = (1+delta1)*(10^(-As/20)); 
deltaH = max(delta1,delta2); 
deltaL = min(delta1,delta2); 
weights = [delta2/delta1 1]; 
deltaf = (ws-wp)/(2*pi); 
M = ceil((-20*log10(sqrt(delta1*delta2))-13)/(14.6*deltaf)+1) 
f = [0 wp/pi ws/pi 1]; 
m = [1 1 0 0]; 
h = firpm(M-1,f,m,weights); 
[db,mag,pha,grd,w] = freqz_m(h,[1]); 
Asd = -max(db(wsi:1:501)) 
while Asd<As 
M = M+1 
[h,ERR,RES] = firpm(M-1,f,m,weights); 
[db,mag,pha,grd,w] = freqz_m(h,[1]); 
Asd = -max(db(wsi:1:501)) 
end
%plot
n = [0:1:M-1]; 
subplot(2,2,1); stem(n,h); 
axis([0,M-1,-0.1,0.3]); 
title('Impulse Response'); 
xlabel('n'); ylabel('h(n)'); 
%
subplot(2,2,2); plot(w/pi,db); grid; 
axis([0,1,-80,10]); 
title('Magnitude Response in dB'); 
xlabel('frequency in pi units'); ylabel('Decibels'); 
%
subplot(2,2,3); plot(w/pi,mag); grid; 
axis([0,1,-0.2,1.2]); 
title('Magnitude Response'); 
xlabel('frequency in pi units'); ylabel('Hr(w)'); 
%
subplot(2,2,4); plot(RES.fgrid,RES.error); grid; 
axis([0,1,-0.0150,0.0150]); 
title('Error Response'); 
xlabel('frequency in pi units'); ylabel('Er(w)');
