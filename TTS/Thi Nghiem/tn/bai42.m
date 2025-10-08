L = 50;     % Do dai tin hieu
N = 200;    % So luong cac tan so roi rac trong khoang 0 den 2*pi
x = rand(1,L);  % Tao tin hieu ngau nhien
w = linspace(0,2*pi,N); % Tao N tan so tang dan tu 0 den 2*pi
fx = freqz(x,1,w);      % Bien doi Fourier cua x tai cac tan so roi rac
esd_x = fx.*conj(fx);   % Tinh ham mat do pho nang luong
acorr_x = xcorr(x);     % Tinh ham tu tuong quan cua tin hieu x
ft_acorr_x = freqz(acorr_x,1,w).*exp(j*w*(L-1)); % Bien doi Fourier cua ham tu tuong quan cua tin hieu x
% Ve do thi
subplot(2,1,1);
semilogy(w/pi,esd_x);
title('Mat do pho nang luong');
xlabel('n');
ylabel('S(e^j^\omega)')
hold on;
subplot(2,1,2);
semilogy(w/pi,real(ft_acorr_x),'r');
xlabel('n');
ylabel('R_x_x(e^j^\omega)');
hold off;
