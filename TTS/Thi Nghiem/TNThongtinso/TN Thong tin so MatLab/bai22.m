t=0:0.01:20;    % Khoang thoi gian xet tu 0 den 20, cach deu 0.01
xt=sin(randn()+t).*cos(rand()*t); % Tin hieu ngau nhien co bien do -1 den 1
[inx xqt] = lquan(xt,-1,1,randi(3)+1);  % Tinh xqt
plot(t,xt,'b',t,xqt,'r');   % Ve do thi xt va xqt
grid on;
title('Do thi cua tin hieu x(t) va xq(t)');
xlabel('t');
legend('x(t)','xq(t)');
hold off;