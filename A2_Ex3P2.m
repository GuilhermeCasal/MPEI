%3
%Considere 4 lanc¸amentos de uma moeda equilibrada. Seja X a variavel aleat ´ oria representativa do ´
% numero de coroas observados nos ´ 4 lanc¸amentos.
% (a) Estime por simulac¸ao a func¸ ˜ ao massa de probabilidade ˜ pX(x) da variavel aleat ´ oria ´ X.
% (b) Estime o valor esperado, a variancia e o desvio padr ˆ ao de ˜ X com base em pX(x).
% (c) Identifique o tipo da distribuic¸ao da vari ˜ avel aleat ´ oria ´ X e escreva a expressao te ˜ orica da respectiva ´
% func¸ao de probabilidade. ˜
% (d) Calcule os valores teoricos da func¸ ´ ao massa de probabilidade de ˜ X e compare-os com os valores
% estimados por simulac¸ao obtidos em (a). ˜
% (e) Calcule os valores teoricos de ´ E[x] e de V ar(X) e compare-os com os valores obtidos em (b).
% (f) Com base nos valores teoricos da func¸ ´ ao massa de probabilidade desta distribuic¸ ˜ ao, calcule: ˜
% i. a probabilidade de obter pelo menos 2 coroas;
% ii. a probabilidade de obter ate 1 coroa; ´
% iii. a probabilidade de obter entre 1 e 3 coroas.


%ALINEA A)

N= 1e5; %nu´mero de experieˆncias
p = 0.5; %probabilidade de coroa
n = 4; %nu´mero de lanc¸amentos

prob = zeros(1,5);

for k = 0:4    
    lancamentos = rand(n, N) > p;
    sucessos = sum(lancamentos) == k;
    prob(k+1) = sum(sucessos) / N;
end


%ALINEA B)
x = (0:4);
media = sum(x.*prob); %o ponto antes do * faz com os valores se multipliquem por posicao 
E = sum((x.^2).*prob);
variancia = E - media^2;
dp = sqrt(variancia);

