%% 3. Gere aleatoriamente uma matriz de transic¸ao de estados para uma cadeia de 20 estados (identificados de ˜
%% 1 a 20) recorrendo a func¸ ` ao do Matlab ˜ rand. Com base nessa matriz:
T = rand(20,20)
%% (a) Confirme que a matriz de transic¸ao de estados e estocastica:
for i = 1:20
    c(i) = sum(T(:,i));
end
c


%% (b) Qual a probabilidade de o sistema, comec¸ando no estado 1, estar no estado 20 apos 2 transic¸ ´ oes? E ˜
%% apos 5? E ap ´ os 10? E ap ´ os 100? Apresente os resultados em percentagem e com 5 casas decimais. ´
%% O que conclui?

x = zeros(20,1);
x(1) = 1;

res1 = T^2 * x;
res1(20)

res5 = T^5 * x;
res5(20)

res10 = T^10 * x;
res10(20)

res100 = T^100 * x
res100(20)