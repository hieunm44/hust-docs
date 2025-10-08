% Ham bien doi Fourier roi rac nguoc
function [xn] = idft(Xk,N)
n = [0:1:N-1];
k = [0:1:N-1];
WN = exp(-j*2*pi/N);
nk = n' * k;
WNnk = WN .^ (-nk); % ma tran IDFT
xn = (Xk * WNnk)/N;
end

