function [probSimulacao] = prob(k,n,p,N)
%N= 1e5; %numero de experiencias
%p = 0.5; %probabilidade de cara
%k = 6; %numero de caras
%n = 15; %numero de resultados possiveis 
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N;
end