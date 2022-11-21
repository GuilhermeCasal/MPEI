%% 6. Considere a cadeia de Markov com o diagrama de transic¸ao de estados seguinte: 
%% (a) Defina em Matlab a matriz de transic¸ao de estados ˜ T, com Tij sendo a probabilidade de ir do estado
%% j para o estado i num unico passo.
T = [ 8 0 3 0 0
      2 6 2 0 0
      0 1 4 0 0
      0 3 0 10 0
      0 0 1 0 10]/10
sum(T);

%% (b) Fac¸a um grafico com a probabilidade de, comec¸ando no estado 1, estar no estado 2 ao fim de ´ n
%% passos, com n a variar de 1 ate 100. Justifique o que observa. 
figure(T);
clear p;
clf
tic
v=[1 0 0 0 0];
p = zeros(1,100);
for passos = 1:100 
    Tn = T^passos;
    
end
toc
plot(1:100,p,'bo:')

%% (d) Determine a matriz Q.
nEstadosAbsorventes = 3;
Q = T(1:nEstadosAbsorventes, 1:nEstadosAbsorventes);

%% (e) Determine a matriz fundamental F
%F = (I-Q) ^ (-1)
% F = inv(eye(size(Q))-Q)
F = (eye(size(Q)) - Q) ^ (-1)
%matriz F dá em media a passagem entre estados

%% (f) Qual a media (valor esperado) do n ´ umero de passos at ´ e´ a absorc¸ ` ao comec¸ando no estado 1? E ˜
%% comec¸ando no estado 2? E se comec¸ando no estado 4?
passos = sum(F);
r1 = passos(1);
r2 = passos(2);

%% (g) Comec¸ando no estado 1, qual e a probabilidade de absorc¸ ´ ao do estado 3? E do estado 5? Verifique ˜
%% a coerencia destes valores com o que observou na al ˆ ´ınea 6c).
numEstadosNaoAbsorventes = 3;
R = T(numEstadosNaoAbsorventes+1:end, 1:numEstadosNaoAbsorventes);
%R = T(3+1: , 1:3)
B = R * F
