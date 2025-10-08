clear;
x=round(rand(1,10000));
plot(x);
for i=1:2:length(x)
    if x(i)==0 & x(i+1)==0
       s((i+1)/2)=exp(j*pi/4);
    elseif x(i)==0 & x(i+1)==1
                s((i+1)/2)=exp(j*3*pi/4);
    elseif x(i)==1 & x(i+1)==1
                s((i+1)/2)=exp(j*5*pi/4);
    elseif x(i)==1 & x(i+1)==0
                s((i+1)/2)=exp(j*7*pi/4);
    end
end

save qpsk_signal s x;

plot(s,'o');
hold on;

t=0:0.01:2*pi;
plot(exp(j*t),'-');

xlabel('Q');
ylabel('I');
title('bieu do trang thai tin hieu dieu che QPSK');