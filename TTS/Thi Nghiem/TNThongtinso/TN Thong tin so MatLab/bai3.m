N = 1000;
x_uni = 2*rand(1,N)-1;          % x_uni phan bo deu tu -1 den 1
x_sin = sin(linspace(1,5,N));   % tin hieu sin
nbit = 1:10;                    % so bit luong tu tu 1 den 10
SNqR_uni = zeros(size(nbit));   % Khoi tao mang SNqR_uni va SNqR_sin chua
SNqR_sin = zeros(size(nbit));   % SNqR cua tin hieu phan bo deu va tin hieu sin
SNqR_lt = 6.02*nbit;            % Mang chua SNqR tinh theo ly thuyet
Ps_uni = sum(x_uni.^2)/N;       % Cong suat tin hieu x theo (3-3)
Ps_sin = sum(x_sin.^2)/N;
for i = 1:size(nbit,2)             % size(n,2) tra ve so cot cua n
    [indx_uni xq_uni] = lquan(x_uni,-1,1,nbit(i));  % Luong tu hoa tin hieu x_uni
    [indx_sin xq_sin] = lquan(x_sin,-1,1,nbit(i));  % Luong tu hoa tin hieu x_sin
    eq_uni = x_uni - xq_uni;       % tinh sai so luong tu hoa x_uni 
    eq_sin = x_sin - xq_sin;       % tinh sai so luong tu hoa x_sin
    Pq_uni = sum(eq_uni.^2)/N;     % tinh cong suat tap am luong tu x_uni
    Pq_sin = sum(eq_sin.^2)/N;     % tinh cong suat tap am luong tu x_sin
    SNqR_uni(i) = 10*log10(Ps_uni/Pq_uni);    % tinh SNR_db cua x_uni
    SNqR_sin(i) = 10*log10(Ps_sin/Pq_sin);    % tinh SNR_db cua x_sin
end
plot(nbit,SNqR_uni,'b-');    % ve do thi SNR tin hieu phan bo deu mo phong
hold on;
plot(nbit,SNqR_sin,'r--');    % ve do thi SNR tin hieu sin mo phong
plot(nbit,SNqR_lt,'m-.');     % Ve do thi SNR tin hieu phan bo deu ly thuyet
title('Do thi SN_qR theo nbit');
xlabel('nbit');
ylabel('SN_qR');
legend('x_uni','x_sin','ly thuyet');
grid on;
hold off;