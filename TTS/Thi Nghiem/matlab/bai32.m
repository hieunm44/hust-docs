SNR_db=0:2:8;
for i=1:length(SNR_db)
    SNR(i)=10^(SNR_db(i)/10);
    p(i)=1/2*[1-erf(1/sqrt(2)*sqrt(SNR(i)))];
end
semilogy(SNR_db,p,'b--');
xlabel('SNR[dB]');
ylabel('Pe');
title('do thi ham xac suat ly thuyet va mo phong')
load bai31 BER;
hold on;
semilogy(SNR_db,BER,'r-');
legend('ly thuyet','mo phong');
hold off;