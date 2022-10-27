%Considere o seguinte “jogo”: lanc¸amento com os olhos vendados de n dardos, um de cada vez, para m
%alvos, garantindo-se que cada dardo atinge sempre um alvo (e apenas 1)

%(a) Estime por simulac¸ao a probabilidade de nenhum alvo ter sido atingido mais do que uma vez ˜
%quando n = 20 dardos e m = 100 alvos.
N = 100;
dardos = 20;
alvos = 100;
lancamentos = randi(alvos, dardos, N);
diff = zeros(1,N);

for col=1:N
    diff(col) = length(unique(lancamentos(:,col))) == dardos;
end

pa = sum(diff)/N;
pb = 1-pa;
fprintf('Alinea a): probabilidade = %.6f\n',pa);
fprintf('Alinea b): probabilidade = %.6f\n',pb);


%(c) Considere os valores de m = 1000 e m = 100000 alvos. Para cada um destes valores, fac¸a as
%simulac¸oes necess ˜ arias para desenhar um gr ´ afico (usando a func¸ ´ ao˜ plot do Matlab) da probabilidade
%da alinea (b) em func¸ao do n ˜ umero de dardos ´ n. Considere n de 10 a 100 com incrementos de 10.
%Os 2 graficos devem ser sub-gr ´ aficos de uma mesma figura (use a instruc¸ ´ ao˜ subplot do Matlab).
%Compare os resultados dos 2 casos e retire conclusoes. 

N = 1e5;
m = 1000;
ns = 10:10:100;
