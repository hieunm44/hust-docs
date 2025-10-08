L = 500;            % Chieu dai tin hieu
x = randn(1,L);     % Tao tin hieu ngau nhien
acorr_x = xcorr(x); % Tinh ham tu tuong quan
n = (-L+1):(L-1);   % Cac mau gia tri
plot(n,acorr_x);    % Ve do thi ham tu tuong quan tin hieu ngau nhien
title('Ham tu tuong quan');
xlabel('n');
ylabel('r_x_x');
hold on;
x = linspace(-1,1,L);   % Tao tin hieu co bien do tang dan
acorr_x = xcorr(x);     % Tinh ham tu tuong quan
plot(n,acorr_x,'g--');  % Ve do thi ham tu tuong quan tin hieu co bien do tang dan
x = sin(linspace(-10,10,L));    % Tao tin hieu hinh sin
acorr_x = xcorr(x);     % Tinh ham tu tuong quan
plot(n,acorr_x,'ro');   % Ve do thi ham tu tuong quan tin hieu hinh sin
legend('Ngau nhien','Bien do tang dan','Hinh sin')
hold off;
