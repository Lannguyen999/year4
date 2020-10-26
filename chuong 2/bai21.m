clc;
clear all;
close all;
a = input('a = ');
b = input('b = ');
saiso = input('saiso =');
[x,count] = bisection(a,b,saiso);
disp('Nghiem theo phuong phap bisection: ');
x
disp('So lan lap: '); count    