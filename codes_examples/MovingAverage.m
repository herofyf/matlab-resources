
X=1:10
A = [1 4 3 2 7 5 6 9 8 10]

ma_i = 1
sum = 0

MA=zeros(1, 10)

mv_len=3
for ma_i = 1: (10-mv_len)
    
    for j = 0:(mv_len -1)
        sum = sum + A(ma_i + j)
    end
    
    MA(ma_i) = sum / mv_len
    sum = 0
end

for ma_i = (10-mv_len + 1) : 10
    MA(ma_i) = MA(ma_i -1)
end

figure
subplot(2, 1, 1)
plot(X, A)

subplot(2,1, 2)
plot(X, MA)


B(1)=(A(1) +A(2)) / 2
for i=2:9
    B(i) = (A(i-1) + a(i) + A(i+1))/3
end
B(10)=(A(9) + A(10))/2

figure
subplot(1, 1, 1)
plot(X, B)

