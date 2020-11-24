%ham luong tu hoa ??u pcm
function [code,xq] = uniform_pcm(x,M)
% x : chuoi t�n hieu dauu v�o
% M : so muc luong tu
% amax: bien do cuc dai nguon tin hieu dau vao.
% code : dau ra ?� ???c ma hoa nhi ph�n
% xq : dau ra bo luong tu haa truoc khi dua vao bo ma hoa
Nb = log2(M);   % so bit cho mot tu m� 
amax = max(abs(x));
delta = 2*amax/(M-1);   
Mq = -amax:delta:amax;  
Ml = 0:M-1;
xq = zeros(size(x));
xcode = xq;
for k = 1:M
ind = find(x > Mq(k)-delta/2 & x <= Mq(k)+delta/2);
xq(ind) = Mq(k);
xcode(ind) = Ml(k);
end

code = de2bi(xcode,Nb,'left-msb');