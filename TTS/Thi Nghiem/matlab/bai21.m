len = 100000;
n=1:len;
x=randn(1,len);
y=xcorr(x,x);
subplot(2,1,1);

plot(y);
axis([0 10^5 -1000 1000]);
save acorr_x;
title('ham tu tuong quan');
ylabel('r(xx)');
