% bat dau lam bai
n = [-2,10];
x = [1:7,6:-1:1]; 
% ve tin hieu x1[n]
[x11, n11] = sigshift(x, n, 5);
[x12, n12] = sigshift(x, n, -4);
[x1, n1] = sigadd(2 * x11, n11, -3 * x12, n12);
subplot(2,1,1); 
stem(n1, x1); 
title('Day so theo dau bai 1.3a'); 
xlabel('n'); 
ylabel('x1(n)');
% ve tin hieu x2[n]
[xt, nt] = sigfold(x, n);
[x21, n21] = sigshift(xt, nt, 3);
[xt, nt] = sigshift(x, n, 2);
[x22, n22] = sigmult(x , n, xt , nt);
[x2, n2] = sigadd(x21, n21, -x22, n22);
subplot(2,1,2); 
stem(n2, x2); 
title('Day so theo dau bai 1.3b'); 
xlabel('n'); 
ylabel('x2(n)');

