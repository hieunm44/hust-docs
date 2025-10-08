n = -20:100;
b = 1;
a = [1, -1, 0.9];
% dap ung xung
x1 = impseq(0, -20, 100);
h = filter(b, a, x1);
subplot(2, 1, 1);
stem(n , h);
title('Dap ung xung'); 
xlabel('n'); 
ylabel('h(n)');
% dap ung nhay
x2 = stepseq(0, -20, 100);
s = filter(b, a, x2);
subplot(2, 1, 2);
stem(n, s);
title('Dap ung nhay'); 
xlabel('n'); 
ylabel('s(n)');
