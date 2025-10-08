len = 50000;                % Do dai dong bit mo phong
SNR_db = 0:2:8;             % Tao vector SNR_db = 0 2 4 6 8
SNR = 10.^(SNR_db/10);      % Doi SNR tu Decibel sang lan
bsignal = randi([0 1],1,len);   % Tao dong bit ngau nhien do dai len
% Thuc hien dieu che QPSK
for i=1:2:len
    if bsignal(i)==0 & bsignal(i+1)==0          % 00
        qpsk_signal((i+1)/2) = exp(j*3*pi/4);   
    elseif bsignal(i)==0 & bsignal(i+1)==1      % 01
        qpsk_signal((i+1)/2) = exp(j*5*pi/4);
    elseif bsignal(i)==1 & bsignal(i+1)==1      % 11
        qpsk_signal((i+1)/2) = exp(j*7*pi/4);
    elseif bsignal(i)==1 & bsignal(i+1)==0      % 10
        qpsk_signal((i+1)/2) = exp(j*pi/4);
    end
end
% Tim BER mo phong
for i=1:length(SNR_db)
    r_signal = awgn(qpsk_signal,SNR_db(i)); % Dieu che QPSK di qua nhieu AWGN
    for j=1:2:len   % Giai dieu che tin hieu QPSK co nhieu
        if real(r_signal((j+1)/2))>=0
            if imag(r_signal((j+1)/2))>=0   % Goc phan tu I
                r_bsignal(j) = 1;
                r_bsignal(j+1) = 0;
            else                            % Goc phan tu IV
                r_bsignal(j) = 1;           
                r_bsignal(j+1) = 1;
            end
        else
            if imag(r_signal((j+1)/2))>=0   % Goc phan tu II
                r_bsignal(j) = 0;
                r_bsignal(j+1) = 0;
            else                            % Goc phan tu III
                r_bsignal(j) = 0;
                r_bsignal(j+1) = 1;
            end
        end
    end
    [n,BER(i)] = biterr(r_bsignal,bsignal);
end
Pb = 1/2*erfc(1/sqrt(2).*sqrt(SNR));    % Xac suat loi bit
plot(SNR_db,Pb,'rx--');                 % Ve do thi Pb ly thuyet
title('Do thi ty le bit loi ly thuyet va mo phong');
xlabel('SNR_d_B');
ylabel('BER');
hold on;
plot(SNR_db,BER,'o-');                       
legend('Ly thuyet','Mo phong');
hold off;
