L = load('L.mat');
N=110;

pr = ones(N,1) / N;
for it = 1 : 10
   pr = L * pr;
end

beta = 0.8;
H2 = beta*L + (1-beta) * ones(N)/N;
H2

r = ones(N,1) / N;
for it = 1 : 10
   r = H2 * r;
end