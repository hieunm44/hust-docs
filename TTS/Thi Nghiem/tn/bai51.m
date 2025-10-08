len = 100000;               % Do dai dong bit mo phong
SNR_db = 0:2:8;             % Tao vector SNR_db = 0 2 4 6 8
SNR = 10.^(SNR_db/10);      % Doi SNR tu Decibel sang lan
bsignal = randi([0 1],1,len);   % Dong bit ngau nhiên do dai len
NRZ_signal = bsignal*2-1;   % Bien doi dòng bit 0 1 sang -1 1
N0 = 1./SNR;                % Cong suat tap am
for i=1:length(SNR_db)
    noise = sqrt(N0(i))*randn(1,len);   % Tao tap am noise voi ti so SNR(i)
    r_signal = NRZ_signal + noise;      % Tin hieu thu duoc = NRZ + noise
    NRZ_decoded = sign(r_signal);       % Giai ma tin hieu NRZ thu duoc
    [n,BER(i)] = symerr(NRZ_decoded,NRZ_signal);    % Tinh xac suat loi
end
plot(SNR_db,BER,'bo--');    % Ve do thi
title('Ty le bit loi');
xlabel('SNR_d_B');
ylabel('BER');