clear;
snr_db=0:8;

snr_db_simulation=0:2:8;

for i=1:length(snr_db)
        snr(i)=10^(snr_db(i)/10);
        gamma_b(i)=snr(i);
        p_b(i)=erfc(sqrt(2*gamma_b(i))/sqrt(2))/2;
end
semilogy(snr_db,p_b,'ro--')
hold on
load bai5 c BEP;
semilogy(snr_db_simulation,BEP,'x--')
title('xac suat loi bit ly thuyet va mo phong');
xlabel('SNR in dB');
ylabel('P_b');
legend('ly thuyet','mo phong');
hold off
        