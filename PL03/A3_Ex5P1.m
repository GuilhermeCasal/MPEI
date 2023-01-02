%% 5. Considere que o tempo em cada dia e genericamente classificado num de 3 estados – sol, nuvens e chuva ´
%% – e que o tempo num determinado dia apenas depende do tempo no dia anterior. Assuma que estamos
%% no primeiro dia de janeiro e que as probabilidades de transic¸ao de estados s ˜ ao as da tabela seguinte.

%% (a) Defina, em Matlab, a correspondente matriz de transic¸ao. 

T = [ 0.7   0.2   0.3;
      0.2   0.3   0.3;
      0.1   0.5   0.4];
sum(T)

%% (b) Qual a probabilidade de estar sol no segundo dia e no terceiro dia de janeiro quando o primeiro dia
%% e de sol?
s1 = [1 0 0]'; %estado inicial
s2 = T * s1;  %segundo dia
s3 = T * s1; %terceiro dia
alineaB = s3(1) * s2(1) %P(3º dia sol | 1º diaa sol)

%% (c) Qual a probabilidade de nao chover nem no segundo dia nem no terceiro dia de janeiro quando o ˜
%% primeiro dia e de sol?                                 

PNCH2 = 1 - T(3,1) % P(Nao chover no segundo dia | 1º dia de sol) que é 1 - probabilidade de chover na passagem de sol para chuva
PNCH3 = 1 - T(3,3) %P(Nao chover| nao choveu no 2 dia) que é 1- P(Chuva->Chuva)
alineaC = PNCH2 * PNCH3

%% (d) Assumindo que o primeiro dia e de sol, determine o n ´ umero m ´ edio de dias de sol, de nuvens e de ´
%% chuva que se espera ter em todo o mes de janeiro.
v1 = [1 0 0]';
numDiasSol = 1;
numDiasChuva = 0;
numDiasNuvens = 0;
for dia = 2:31
    v1 = T * v1;
    numDiasSol = numDiasSol + v1(1);
    numDiasNuvens = numDiasNuvens + v1(2);
    numDiasChuva = numDiasChuva + v1(3);
end
fprintf('Alinea D)\n');
fprintf('Numero de dias de sol: %.2f\n',numDiasSol);
fprintf('Numero de dias de nuvens: %.2f\n',numDiasNuvens);
fprintf('Numero de dias de chuva: %.2f\n',numDiasChuva);
fprintf('\n');

%% (e) Assumindo que o primeiro dia e de chuva, determine o n ´ umero m ´ edio de dias de sol, de nuvens e ´
%% de chuva que se espera ter em todo o mes de janeiro. Compare estes resultados com os da al ˆ ´ınea
%% anterior. O que conclui?
v2 = [0 0 1]';
numDiasSol = 0;
numDiasChuva = 1;
numDiasNuvens = 0;
for dia = 2:31
    v2 = T * v2;
    numDiasSol = numDiasSol + v2(1);
    numDiasNuvens = numDiasNuvens + v2(2);
    numDiasChuva = numDiasChuva + v2(3);
end
fprintf('Alinea D)\n');
fprintf('Numero de dias de sol: %.2f\n',numDiasSol);
fprintf('Numero de dias de nuvens: %.2f\n',numDiasNuvens);
fprintf('Numero de dias de chuva: %.2f\n',numDiasChuva);
fprintf('\n');

%% (f) Considere uma pessoa com reumatismo cronico que tem dores reum ´ aticas com probabilidades de ´
%% 10%, 30% e 50% quando os dias sao de sol, de nuvens ou de chuva, respetivamente. Qual o n ˜ umero ´
%% esperado de dias que a pessoa vai sofrer de dores reumaticas em janeiro quando o primeiro dia ´ e de ´
%% sol? E quando o primeiro dia e de chuva?
v3 = [1 0 0]';
count = v3(1)*0.10 + v3(2)*0.30 + v3(3)*0.50;

for dia = 2:31
    v3 = T * v3;
    count = count + v3(1)*0.10 + v3(2)*0.30 + v3(3)*0.50;
end

fprintf('Numero medio de dias que a pessoa vai sofrer por dores reumaticas: %.2f\n',count);


