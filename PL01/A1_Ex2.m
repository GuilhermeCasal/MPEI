%% Codigo 1 - segunda versao
N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
k = 6; %numero de caras
n = 15; %numero de resultados possiveis 
lancamentos = rand(15,1e5) > 0.5;
sucessos= sum(lancamentos)==6;
probSimulacao= sum(sucessos)/1e5;
