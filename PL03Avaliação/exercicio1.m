%% Exercicio 1

                                       
                                      
T = [0.4 7/30 0.25 0.25     
    0.2 0.3 0.25 0.25      
    0.2 7/30 0.25 0.25      
    0.2 7/30 0.25 0.25];    

             % OCEANO  %%  FLORESTA  %% URBANO %%  DESERTO
% OCEANO    %
% FLORESTA  %
% URBANO   %
% DESERTO    %

%%%%% ALINEA C %%%%%%

v = [0.25 0.25 0.25 0.25]';
Pc = T^5 * v
Pc(3)

%%%%% ALINEA D %%%%%%%

M = [T-eye(4); 
     ones(1,4)]; % para soma de probabilidades dar 1

x = [zeros(4,1);
     1]; % para a soma de probabilidades dar 1
%resolver a equação para obter u
u = M\x
u(1)
sum(u) %verificar que dá 1

%%%%% ALINEA E %%%%%%%%

v = [0.25 0.25 0.25 0.25]';
v2 = [0 0 1 0];
vf = v * v2
v(3)

v_sessao_3 = T * vf;
v_sessao_4 = T * v_sessao_3;
v_sessao_5 = T * v_sessao_4;

v_sessao_4(4)
v_sessao_5(4)

