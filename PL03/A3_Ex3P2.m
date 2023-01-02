%% (a) Usando a matriz da Google A, com β = 0.85, obtenha a estimativa do pagerank de cada pagina ´
%% usando um metodo iterativo, repetindo o processo iterativo de c ´ alculo at ´ e que a diferenc¸a de page- ´
%% rank entre duas iterac¸oes n ˜ ao exceda ˜ 0.01 em valor absoluto para todas as paginas. As colunas e ´
%% linhas da matriz devem seguir a ordem alfabetica dos nomes das p ´ aginas. ´
%% Quais as paginas com o menor e maior pagerank e qual o seu valor ? ´
%% (b) Confirme os valores de pagerank obtidos usando um processo nao iterativo.

%% a
T = rand(20, 20);

for i = 1 : 20
    c(i) = sum(T(:,i));
end
c;
% n e estocatica

%% b

T = rand(20, 20);

for i = 1 : 20
    c = sum(T(:,i));
    T(:,i) = T(:, i) /c;
end

x0 = zeros(20,1);
x0(1)=1;

%pode se fazer de qualquer maneira
res1 = T^2 *x0;
res1(20,1);

res = T^2;
res(20,1)

res = T^5; 
res(20,1)
res = T^10; 
res(20,1)
res = T^100; 
res(20,1)