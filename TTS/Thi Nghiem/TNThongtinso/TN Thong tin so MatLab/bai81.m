n_sym = 50000;          % So ky tu dieu che
M = [16 32 64];         % So symbol ky hieu
SNR_db = 0:25;          % Tao vector SNR = 0 - 25 Decibel
BER = zeros(length(M),length(SNR_db));  % BER de luu ti le loi bit
for k = 1:size(M,2)     % size(M,2) la so cot cua M
    s_stream = randi([0 M(k)-1],1,n_sym);   % Tao dong bieu tuong do dai n_sym
    s_mod = qammod(s_stream,M(k),0,'GRAY'); % Dieu che M-QAM 
    for r = 1:size(SNR_db,2)    % Vong lap tinh BER
       s_mod_awgn = awgn(s_mod,SNR_db(r),'measured'); % Tin hieu qua nhieu 
       s_demod = qamdemod(s_mod_awgn,M(k),0,'GRAY');  % Giai dieu che M-QAM
       [num ratio] = biterr(s_stream,s_demod);  % Tinh ti le loi bit
       BER(k,r) = ratio;     % Luu ti le loi bit vao BER
    end
end
semilogy(SNR_db,BER(1,:),'bx-');    % Ve do thi BER ung voi M = 16
hold on;
semilogy(SNR_db,BER(2,:),'rs-');    % Ve do thi BER ung voi M = 32
semilogy(SNR_db,BER(3,:),'mo-');    % Ve do thi BER ung voi M = 64
grid on;
title('Do thi the hien ty le loi bit M-QAM');
xlabel('SNR_d_B');
ylabel('BER');
legend('16-QAM','32-QAM','64-QAM');
hold off;