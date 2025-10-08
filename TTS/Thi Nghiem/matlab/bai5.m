clear all;
load ex5p1_res s x;
snr_db=0:2:8;
for i=1:length(snr_db)
        c(i)=ex5(snr_db(i),s,x); 
end

BEP=c/length(x);
semilogy(snr_db,BEP,'--');
title('do thi ti le loi bit');
xlabel('SNR in dB');
ylabel('P_b');
legend('P_b');
save bai5 c BEP;