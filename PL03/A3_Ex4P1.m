%% 4. Considere o seguinte diagrama representativo de uma Cadeia de Markov:
%% (a) Defina, em Matlab, a matriz de transic¸ao de estados ˜ T assumindo p = 0, 4 e q = 0, 6.

p = 0.4;
q = 0.6;

%     A       B    C     D
T = [p^2      0    0    q^2;       %A
     (1-p)^2  0    0    q*(1-q);    %B
     p*(1-p)   0    0    q*(1-q);    %C
     p*(1-p)   1    1    (1-q)^2]; %D

sum(T)

%% (b) Assuma que o sistema se encontra inicialmente no estado A. Qual a probabilidade de estar em cada
%% estado ao fim de 5 transicoes? E de 10 transicoes? E de 100 transicoes? E de 200 transicoes?

v0 = [1, 0, 0, 0]';
v5 = T^5 * v0
v10 = T^10 * v0
v100 = T^100 * v0
v200 =  T^200 * v0

%% (c) Determine as probabilidades limite de cada estado. Compare estes valores com os obtidos na alınea
%% anterior. O que conclui?

%I = eye(4); %matriz identidade 
%TEORIA => u(T-I) 
M = [T-eye(4); 
     ones(1,4)]; % para soma de probabilidades dar 1

x = [zeros(4,1);
     1]; % para a soma de probabilidades dar 1
%resolver a equação para obter u
u = M\x
sum(u) %verificar que dá 1

