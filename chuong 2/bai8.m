C = [1 2 3 4 10; -22 1 11 -12 4; 8 1 6 -11 5; 18 1 11 6 4]
ten = 10*ones(4,5) %tao ma tran toan 10
negten = -10*ones(4,5) %tao ma tran toan -10
conditen = C > ten %lay ra cac vi tri ma gia tri > 10
condinegten = C < negten %lay ra cac vi tri ma gia tri < -10
condi = conditen | condinegten %lay ra cac vi tri ma gia tri >10 hoac <-10
res = C.*(~condi) %~condi de lay gia tri trong khoang [-10,10]
                   % nhan phan tu voi C de co ket qua
