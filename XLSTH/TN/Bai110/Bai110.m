L = 5; N = 20; 
n = [0:N-1]; 
xn = [ones(1,L), zeros(1,N-L)]; 
k = n; 
Xk = dft(xn,N); 
magXk = abs(Xk); 
% 
subplot(2,1,1); stem(n,xn); 
axis([min(n),max(n)+1,-0.5,1.5]); 
title('Sequence x(n)'); 
xlabel('n'); ylabel('x(n)'); 
subplot(2,1,2); stem(k,magXk); 
axis([min(k),max(k)+1,-0.5,5.5]); 
title('DFT of SQ. wave: L=5, N=20'); 
xlabel('k'); ylabel('X(k)'); 
