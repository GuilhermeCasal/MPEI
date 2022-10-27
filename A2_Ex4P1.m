%% 4. Considere uma festa em que esta presente um determinado n ´ umero ´ n de pessoas.
%% (a) Qual deve ser o menor valor de n para o qual a probabilidade de duas ou mais pessoas terem a
%% mesma data de aniversario (m ´ es e dia) ˆ e superior a 0,5 (assuma que um ano tem sempre 365 dias)?

N = 1e5;
p = 0.5;

clear result
for pessoas = 2: 366
    aux = randi(365, people, N);
    for i = 1: N
        result(i) = length(unique(aux(:, i))) < pessoas;
    end
    prob = sum(result)/N;
    if (prob > p)
        pessoas
        break
    end
end

%% (b) Qual deve ser o valor de n para que a probabilidade da al´ınea anterior passe a ser superior a 0,9?
N = 1e5;
p = 0.9;

clear result
for pessoas = 2: 366
    aux = randi(365, people, N);
    for i = 1: N
        result(i) = length(unique(aux(:, i))) < pessoas;
    end
    prob = sum(result)/N;
    if (prob > p)
        pessoas
        break
    end
end