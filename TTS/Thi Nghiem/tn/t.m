SNR_db = 0:2:8;   
SNR = 10.^(SNR_db/10);
Pe = 1/2*(1-erf(sqrt(SNR)/sqrt(2))); 
plot(SNR_db,Pe,'rx-'); 
hold on;
Pb = 1/2*erfc(1/sqrt(2).*sqrt(SNR));  
plot(SNR_db,Pb,'go--');