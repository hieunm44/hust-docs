l=500;
x=randn(1,l,);
acorr_x= xcorr(x);
plot(n,acorr_x);