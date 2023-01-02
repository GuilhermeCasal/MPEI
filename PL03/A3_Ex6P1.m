%% 6. Considere a cadeia de Markov com o diagrama de transic¸ao de estados seguinte: 
%% (a) Defina em Matlab a matriz de transic¸ao de estados ˜ T, com Tij sendo a probabilidade de ir do estado
%% j para o estado i num unico passo.
T = [ 0.8   0   0   0.3   0
      0.2  0.6  0   0.2   0
       0   0.3  1    0    0
       0   0.1  0   0.4   0
       0    0   0   0.1   1];
sum(T)

%% (b) Fac¸a um grafico com a probabilidade de, comec¸ando no estado 1, estar no estado 2 ao fim de ´ n
%% passos, com n a variar de 1 ate 100. Justifique o que observa. 
v1 = [1 0 0 0 0]';
n = 1:100;
estado2 = zeros(100,1);
for i = 1:100
    v1 = T*v1;
    estado2(2) = v1(2);
end
figure(1);
plot(n,estado2);
fprintf('alinea b\n');
fprintf('probabilidade de estar no 2: %.10f\n',v1(2));
fprintf('\n');

%% Fac¸a um grafico com a probabilidade de, comec¸ando no estado 1, estar no estado 3 ao fim de ´ n
%% passos. Na mesma figura, fac¸a um segundo grafico com a probabilidade de, comec¸ando no estado ´
%% 1, estar no estado 5 ao fim de n passos. Em ambos os casos, considere n a variar de 1 ate 100. ´
%% Justifique o que observa.
v2 = [1 0 0 0 0]';
estado3 = zeros(100,1);
estado5 = zeros(100,1);

for i = 1:100
    v2 = T*v2;
    estado3(2) = v2(2);
end

v3 = [1 0 0 0 0]';
for i = 1:100
    v3 = T*v3;
    estado5(2) = v3(2);
end

figure(2);
subplot(1,2,1)
plot(n,estado3);
subplot(1,2,2);
plot(n,estado5);
fprintf('alinea c\n');
fprintf('probabilidade de estar no 3: %.10f\n',v1(4));
fprintf('probabilidade de estar no 5: %.10f\n',v2(5));
fprintf('\n');

%% (d) Determine a matriz Q.
T = [0.8    0   0   0.3 0
     0.2    0.6 0.2 0   0
     0      0.1 0.4 0   0
     0      0.3 0   1   0
     0      0   0.1 0   1]
nEstadosAbsorventes = 3;
Q = T(1:nEstadosAbsorventes, 1:nEstadosAbsorventes)

%% (e) Determine a matriz fundamental F
%F = (I-Q) ^ (-1)
%F = (eye(size(Q))-Q) ^ (-1)
F = inv(eye(3)-Q)
%matriz F dá em media a passagem entre estados

%% (f) Qual a media (valor esperado) do n ´ umero de passos at ´ e´ a absorc¸ ` ao comec¸ando no estado 1? E ˜
%% comec¸ando no estado 2? E se comec¸ando no estado 4?
numPassos = sum(F);
passos1 = numPassos(1);
passos2 = numPassos(2);
fprintf('Alinea f)\n');
fprintf('Média de passos até á absorção começando no:\n');
fprintf('Estado 1: %.10f\n',passos1);
fprintf('Estado 2: %.10f\n',passos2);
fprintf('\n');
%% (g) Comec¸ando no estado 1, qual e a probabilidade de absorc¸ ´ ao do estado 3? E do estado 5? Verifique ˜
%% a coerencia destes valores com o que observou na al ˆ ´ınea 6c).
numEstadosNaoAbsorventes = 3;
R = T(numEstadosNaoAbsorventes+1:end, 1:numEstadosNaoAbsorventes);
%R = T(3+1: , 1:3)
B = R * F
