%% 7. Considere o conjunto de paginas Web e respetivas hyperligac¸ ´ oes entre si dado pelo diagrama seguinte:

%% (a) Usando a matriz H das hyperligac¸oes, obtenha a estimativa do pagerank de cada p ˜ agina ao fim de ´
%% 10 iterac¸oes. Relembre que deve considerar (i) a mesma probabilidade de transic¸ ˜ ao de cada p ˜ agina ´
%% para todas as paginas seguintes poss ´ ´ıveis e (ii) a probabilidade da pagina inicial deve ser igual para ´
%% todas as paginas. Qual/quais a(s) p ´ agina(s) com maior pagerank e qual o seu valor ´
%% ˜?
N=6;
H = [0  0   0   0   1/3 0
     1  0   0   0   1/3 0
     0  1/2 0   1   0   0
     0  0   1   0   0   0
     0  1/2 0   0   0   0
     0  0   0   0   1/3 0]

pr = ones(N,1)/N;
for it = 1:10
    pr = H * pr;
end
plot(1:6, pr);
xlabel("Estados");
ylabel("Probabilidades do estado");
hold on;


%% (c) Altere a matriz H para resolver apenas o problema do ”dead-end”e recalcule o pagerank de cada
%% pagina novamente em 10 iterac¸ ´ oes.
H2 = H;
H2 (:,6) = 1/N;
H2;
pr = ones(N,1) / N;
for it = 1 : 10
   pr = H2 * pr;
end


%% (d) Resolva agora ambos os problemas e recalcule o pagerank de cada pagina novamente em 10 ´
%% iterac¸oes (assuma ˜ β = 0, 8).
beta = 0.8;
H2 = beta*H + (1-beta) * ones(N)/N;
H2

r = ones(N,1) / N;
for it = 1 : 10
   r = H2 * r;
end


%% (e) Calcule agora o pagerank de cada pagina considerando um n ´ umero m ´ ´ınimo de iterac¸oes que garanta ˜
%% que nenhum valor muda mais do que 10−4
%% em 2 iterac¸oes consecutivas. Quantos iterac¸ ˜ oes s ˜ ao˜
%% necessarias? Compare os valores de pagerank obtidos com os da al ´ ´ınea anterior. O que conclui?
i = 2;
diff = 1;
max_diff = 10^(-4);
rAnterior =(a^0)*x0;

% Enquanto a diferença for menor que o valor máximo
while diff > max_diff
    rAtual = (a^(i-1))*x0;
    diff = max(abs(rAtual - rAnterior));

    i = i + 1;
    rAnterior = rAtual;
end
fprintf("Demorou %d iterações\n", i);
disp(rAtual);
