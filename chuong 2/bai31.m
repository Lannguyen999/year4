%randint(m, n, [a,b]) hoac randint(m,n,c)
%tao ma tran mxn cac so tu a den b ( hoac tu 0 den c-1) voi xac suat = nhau
%randint(m,n) la tao ma tran mxn cac so 0 va 1 voi xac suat = nhau
clear all;
close all;
M = randi([0 1],32,4);
d = bi2de(M);
disp('   Dec           Binary       ')
disp('------   ---------------------')
disp([d,M])
