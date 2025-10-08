function [id qy]= lquan(x,xmin,xmax,nbit)
nlevel = 2^nbit;            % So muc luong tu hoa
q = (xmax-xmin)/nlevel;     % Buoc luong tu
[id qy] = quantiz(x,xmin+q:q:xmax-q,xmin+q/2:q:xmax-q/2);
