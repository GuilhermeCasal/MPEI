%2
%2. Considere uma caixa contendo 90 notas de 5 Euros, 9 notas de 50 e 1 de 100.
% (a) Descreva o espac¸o de amostragem da experiencia aleat ˆ oria, retirar uma nota da caixa, e as proba- ´
% bilidades dos acontecimentos elementares.
% (b) Considere agora a variavel aleat ´ oria ´ X como sendo o valor de uma nota retirada a sorte da caixa `
% acima descrita. Descreva o espac¸o de amostragem e a func¸ao massa de probabilidade de ˜ X.
% (c) Determine a func¸ao distribuic¸ ˜ ao acumulada de ˜ X e efectue a sua representac¸ao gr ˜ afica em Matlab.

%a) espaço de amostragem é retirar uma das 100 notas possiveis

%ALINEA B)
figure(1)
subplot(1,2,1)
x = [5 10 100];
y = [90 9 1];
totalnotas = 100;
y = y / totalnotas;
stem(x,y) %funçao massa

grid on
title("FMP de X")
xlabel("Valor da nota")
ylabel("Quantidade de notas")


%ALINEA C)
subplot(1,2,2)
fx = cumsum(y); %soma comulativa 
stairs(x, fx);
%xlim([0 7])
%ylim([0 1.1])
grid on


