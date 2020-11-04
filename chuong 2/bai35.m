%Ma tran tao ma
G = [1 0 0 0 1 1 1;
    0 1 0 0 1 1 0;
    0 0 1 0 1 0 1;
    0 0 0 1 0 0 1];
%voi k = 4, n = 7
k = 4;
for i= 1:2^4
    for j= k:-1:1
        if rem(i-1, 2^(-j+k+1)) >= 2^(-j+k)
            u(i,j) = 1;
        else
            u(i,j) = 0;
        end
    end
end
%Xac dinh tu ma dau ra
disp('Tu ma dau ra la')
c = rem(u*G,2)


      