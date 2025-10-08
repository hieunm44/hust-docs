% Ham tra ve thiet ke bo loc thong thap tuong tu, ?inh dang Chebyshev co bac toi uu theo chuong trinh mau
function [b,a] = afd_chb1(Wp,Ws,Rp,As)
if Wp <= 0
error('Tan so cat dai thong phai lon hon 0')
end
if Ws <= Wp
error('Tan so cat dai thong phai lon hon tan so cat dai chan')
end
if (Rp <= 0) | (As<0)
error('Do gon dai thong va/hoac Do suy giam dai chan phai lon hon 0')
end
%
ep = sqrt(10^(Rp/10)-1);
A = 10^(As/20);
OmegaC = Wp;
OmegaR = Ws/Wp;
g = sqrt(A*A-1)/ep;
N = ceil(log10(g+sqrt(g*g-1))/log10(OmegaR+sqrt(OmegaR*OmegaR-1)));
fprintf('\n*** Bac cua bo loc Chebyshev-1 = %2.0f\n',N);
[b,a] = u_chb1ap(N,Rp,OmegaC);
end

