len = 100000;
bsignal = rand(1,len)>0.5;
NRZ_signal = bsignal*2 -1;
n=1/sqrt(2)*[randn(1,len)+j*randn(1,len)];
SNR_db = 0:2:8;
for i=1:length(SNR_db)
    y=NRZ_signal + 10^(-SNR_db(i)/20)*n;
    ur=real(y)>0;
    c(i)=size(find([bsignal-ur]),2);
end
BER=c/len;
Berlt=0.5*erfc(sqrt(10.^(SNR_db/10)));
save bai31 BER;
semilogy(SNR_db,BER,'b-');
xlabel('SNR[dB]');
ylabel('BER');
title('do thi ty le loi bit');
