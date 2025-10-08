N = 100000;
n = 1:N;
x = randn(1,N);
y=xcorr(x,x);
plot(y);
axis([0 10^5 -1000 1000]);
title('ham tu tuong quan');
xlabel('lags');
ylabel('R_i');