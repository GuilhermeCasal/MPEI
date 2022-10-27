%1. Considere a seguinte situac¸ao e responda ˜ as al ` ´ıneas abaixo:
%Um aluno do primeiro ano de um curso de Engenharia tem todas as semanas 2 aulas Teorico-Pr ´ aticas de ´
%uma Unidade Curricular X as 9:00, ` as quartas e sextas. `
%Todos os dias que tem aulas desta UC, o aluno decide se vai a aula ou n ` ao da seguinte forma: Se tiver ˜
%estado presente na aula anterior a probabilidade de ir a aula ` e 70%; se faltou ´ a anterior, a probabilidade `
%de ir e 80%. ´

%% (a) Se estiver presente na aula de quarta numa determinada semana, qual a probabilidade de estar
%% presente na aula de quarta da semana seguinte?
%% Sugestao: Comece por definir a matriz de transic¸ ˜ ao de estados e o vetor estado correspondentes. ˜

T=[0.2 0.3
   0.8 0.7]; 
sum(T) %a soma tem que dar um vetor de "uns"

v1 = [0 1]'; %transposta; é porque o ponto de partida é Nao faltou
             %VETOR ESTADO

%v2=T*v1 vai dar a probabilidade de ir ou nao ir para as seguintes aulas (v3 = v2 * T...)

v_aula1 = v1;
v_aula2 = T * v_aula1;
v_aula3 = T * v_aula2;
respostaA = v_aula3(2)


%% (b) Se nao estiver presente na aula de quarta numa determinada semana, qual a probabilidade de estar ˜
%% presente na aula de quarta da semana seguinte?
v1 = [1 0]'; %transposta; é porque o ponto de partida é Nao faltou
             %VETOR ESTADO

%v2=T*v1 vai dar a probabilidade de ir ou nao ir para as seguintes aulas (v3 = v2 * T...)

v_aula1 = v1;
v_aula2 = T * v_aula1;
v_aula3 = T * v_aula2;
respostaB = v_aula3(2)

%% (c) Sabendo que esteve presente na primeira aula, qual a probabilidade de estar na ultima aula, assu- ´
%% mindo que o semestre tem exactamente 15 semanas de aulas e nao existem feriados? ˜

v1 = [0 1]';
v=v1;
for aula = 2:15*2
    v = T * v;
end
respostaC = v(2)

%% (d) Represente num grafico a probabilidade de faltar a cada uma das 30 aulas, assumindo que a proba- ´
%% bilidade de estar presente na primeira aula e de 85%.

pNFaltar = 0.85;
v1 = [1-pNFaltar pNFaltar]';
numAulas=30;
prob = zeros(1,numAulas);
prob(1) = v1(1);
v=v1;
for aula = 2:numAulas
    v = T * v;
    prob(aula) = v(1);
end

plot(1:numAulas, prob, 'b*:')

