%6. A distribuic¸ao de Poisson ˜ e uma forma limite da distribuic¸ ´ ao binomial (quando ˜ n → ∞ , p → 0 e np
%permanece constante) e portanto pode ser usada para aproximar e simplificar os calculos envolvidos com ´
%a binomial em situac¸oes em que as condic¸ ˜ oes anteriores se verifiquem. ˜
%Num processo industrial de fabrico de chips, alguns aparecem defeituosos tornando-os inapropriados
%para comercializac¸ao. ˜ E sabido que em m ´ edia por cada 1000 chips h ´ a um defeituoso. ´
%(a) Usando a distribuic¸ao binomial, determine a probabilidade de numa amostra de ˜ 8000 chips aparecerem 7 defeituosos.
%(b) Determine a mesma probabilidade usando a aproximac¸ao de Poisson e compare o resultado com o ˜
%da al´ınea anterior.
%Lei de Poisson: pk =λkk!e−λ

%ALINEA A)

N = 1e5;
p = 1/1000;
erro = 7;
n = 8000;

lancamentos = rand(n,N) < p;
sucessos = sum(lancamentos) == erro;
probA = sum(sucessos)/N;

%ALINEA B)

lambda = n * p;

probB = ((lambda^erro)/factorial(erro)) * (exp(-lambda));

