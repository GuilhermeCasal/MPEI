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
PNCH3 = 1 - T(3,1);
alineaC = PNCH2 * PNCH3

%% (d) Assumindo que o primeiro dia e de sol, determine o n ´ umero m ´ edio de dias de sol, de nuvens e de ´
%% chuva que se espera ter em todo o mes de janeiro.
respSol= 1;
respChuva = 0;
respNuvens = 0;
v = [1 0 0]';
for i = 2:31
    v = T * v;
    respSol = respSol + v(1);
    respNuvens = respNuvens + v(2);
    respChuva = respChuva + v(3);
end
