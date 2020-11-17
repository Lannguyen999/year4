clc;
clear all;
close all;
M = randi([0 1],32,4);
d = bi2de(M);
disp('   Dec |          Binary       ')
disp('------ |  ---------------------')
disp([d,M])
