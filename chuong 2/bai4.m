%Ma tran A
A =[-1 3.5 2;0 1 -1.3;1.1 2 1.9]
%de xuat ra ma tran C = [-1 0 0; 0 1 0; 0 0 1.9]
%tao ma tran don vi 3 hang 3 cot
E3 = eye(3)
%dung toan du .* de nhan tung phan tu ma tran A voi ma tran don vi
C = A .* E3