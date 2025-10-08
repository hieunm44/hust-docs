% Ham tra ve he so cac da thuc tu va da thuc mau cua ham truyen dat cho thiet ke bo loc dang Chebyshev I 
% co tan so cat tuy y theo chuong trinh mau
function [b,a] = u_chb1ap(N,Rp,Omegac)
[z,p,k] = cheb1ap(N,Rp);
a = real(poly(p));
aNn = a(N+1);
p = p*Omegac;
a = real(poly(p));
aNu = a(N+1);
k = k*aNu/aNn;
B = real(poly(z));
b0 = k;
b = k*B;
end

