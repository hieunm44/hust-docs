x=-5:0.1:5;
Px=1/(sqrt(2*pi))*exp(-x.^2/2);
plot(x,Px);
title('Phan bo xac suat Gauss');
xlabel('x');
ylabel('P(x)');