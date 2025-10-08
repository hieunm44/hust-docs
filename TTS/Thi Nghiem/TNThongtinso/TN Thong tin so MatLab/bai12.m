len=100000;     % Do dai cua qua trinh ngau nhien
x=randn(1,len); % Tao qua trinh ngau nhien theo phan phoi chuan
step=0.1;       % step = 0.1
k=-5:step:5;    % khoang xet tu -5 den 5 cach deu 0.1
Px=hist(x,k)/len/step;  % Xac dinh so vector 
stem(k,Px,'o-');     % Ve do thi roi rac cua Px mo phong
Px_LT=exp(-k.^2/2)/sqrt(2*pi);  % Tinh Px ly thuyet
hold on;
plot(k,Px_LT);  % Ve do thi Px ly thuyet
title('Phan bo xac suat Gauss');
xlabel('x');
ylabel('P(x)');
legend('Ly thuyet','Mo phong');
hold off;