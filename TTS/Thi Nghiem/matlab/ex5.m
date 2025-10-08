function y=ex5(SNR_db,s,x)
es=var(s);
eb=es/2;
N_0=eb/10.^(SNR_db/10);
N0=sqrt(N_0/2)*(randn(size(s))+j*randn(size(s)));
ns=s+N0;
theta_m=[pi/4,3*pi/4,5*pi/4,7*pi/4];
S_m=exp(j*theta_m);
for i=1:length(s)
    d=abs(S_m-ns(i));
    md=min(abs(S_m-ns(i)));
    if md==d(1);
        r(2*i-1)=0;
        r(2*i)=0;
    elseif md==d(2);
        r(2*i-1)=0;
        r(2*i)=1;
    elseif md==d(3);
        r(2*i-1)=1;
        r(2*i)=1;
    elseif md==d(4);
        r(2*i-1)=1;
        r(2*i)=0;
    end
end
c=0;
for i=1:length(x)
    if r(i)~=x(i);
        c=c+1;
    end
end
y=c;