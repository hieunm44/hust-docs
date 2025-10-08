len = 50000;                % Do dai dong bit mo phong
SNR_db = 6;                 % SNR co don vi Decibel
SNR = 10^(SNR_db/10);       % Doi SNR tu Decibel sang lan
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
Es = std(qpsk_signal)^2;        % Nang luong ky hieu
N0 = Es/SNR;                    % Cong suat tap am
% Tao nhieu Gauss
noise = sqrt(N0/2)*(randn(1,length(qpsk_signal))+j*randn(1,length(qpsk_signal)));  
qpsk_awgn = qpsk_signal + noise; % Cho tin hieu dieu che di qua kenh AWGN
plot(qpsk_awgn,'.');             % Ve bieu do chom sao tin hieu co nhieu
title('Do thi chom sao 4-QPSK');
xlabel('I');
ylabel('Q');
hold on;
plot(qpsk_signal,'r*');          % Ve bieu do chom sao tin hieu khong nhieu
plot(exp(j*[0:0.01:2*pi]),'r--');
