N = 1e4;
n = 8;
p1 = 0.02;
p2 = 0.05;
p3 = 0.01;

x1 = rand(8, N) <= p1;
x2 = rand(8, N) <= p2;
x3 = rand(8, N) <= p3;

x = x1 | x2 | x3;
x = sum(x) > 0;
probA = sum(x) / N;