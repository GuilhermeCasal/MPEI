N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
n = 20; %numero de resultados possiveis 

c = zeros(1,n+1);

for k = 0:n
    c(k+1) = prob(k,n,p,N);
end

plot(0:n,c)