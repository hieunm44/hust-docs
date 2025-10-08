len=100000;
load acorr_x;
x=randn(1,len);
p= abs(fft(y));

z = abs(fft(x));
k=(0:len/2-1)/len;

subplot(2,1,1);
plot(k,20*log(z(1:len/2)));
title('ham mat do pho nang luong');
xlabel('dB');
ylabel('ft_acorr_x');
subplot(2,1,2);
plot(k,20*log(z(1:len/2)));
xlabel('n');
ylabel('esd_x');

