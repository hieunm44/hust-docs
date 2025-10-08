N=1000;
x= 2*rand(1,N)-1;
nbit=1:10;
SNqR=zeros(size(nbit));
SNqR_Lt= 6.02*nbit;
Ps= sum(x.^2)/N;
for i=1:size(nbit,2)
    [xi xq]=lquan(x,-1,1,nbit(i));
    eq=x-xq;
    Pq=sum(eq.^2)/N;
    SNqR(i)=10*log(Ps/Pq);
end
plot(nbit,SNqR,'b',nbit,SNqR,'r');
    