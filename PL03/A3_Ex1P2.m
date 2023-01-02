%% 1. Relativamente ao problema 6 da secc¸ao anterior: ˜
%% (a) Confirme os valores calculados nas al´ıneas (f) e (g) atraves de simulac¸ ´ ao (fac¸a a m ˜ edia de v ´ arias ´
%% simulac¸oes). Use o c ˜ odigo Matlab na ´ ultima p ´ agina como base para criar a suas simulac¸ ´ oes. ˜
%% (b) Guarde numa variavel do tipo cell array do Matlab 10000 sequ ´ encias que comec¸am num dos estados ˆ
%% nao absorventes (escolhido com igual probabilidade). Calcule os comprimentos m ˜ ´ınimo e maximo ´
%% das sequencias geradas.
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



v1 = [1 0]'; %transposta; é porque o ponto de partida é Nao faltou
             %VETOR ESTADO

%v2=T*v1 vai dar a probabilidade de ir ou nao ir para as seguintes aulas (v3 = v2 * T...)

v_aula1 = v1;
v_aula2 = T * v_aula1;
v_aula3 = T * v_aula2;
respostaB = v_aula3(2)


v1 = [0 1]';
v=v1;
for aula = 2:15*2
    v = T * v;
end
respostaC = v(2)



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