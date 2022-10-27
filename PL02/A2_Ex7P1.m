% 7. Considere que uma empresa tem 3 programadores (Andre, Bruno e Carlos)
% e que a probabilidade de um programa de cada um deles ter problemas
% (“bugs”) e o numero de programas desenvolvidos assumem os valores
% apresentados na tabela seguinte.
%
%   Programador Prob("erro num programa")   Programas
%   André       0.01                        20
%   Bruno       0.05                        30
%   Carlos      0.001                       50
%
% O Diretor da empresa seleciona de forma aleatoria um dos 100 programas
% produzidos pelos seus 3 programadores e descobre que este contem um erro
% sério.
% a) Qual é a probabilidade de o programa ser do Carlos?
% b) De quem é mais provável ser o programa?

N = 1000;    % nº de experiências
nA = 20;    % nº de programas do André
nB = 30;    % nº de programas do Bruno
nC = 50;    % nº de programas do Carlos

pA = 0.01;  % prob. de "bug" do André
pB = 0.05;  % prob. de "bug" do Bruno
pC = 0.001; % prob. de "bug" do Carlos

a = rand(20, N);    %
progA = a <= 0.01;  %
b = rand(30, N);    %
progB = b <= 0.05;  %
c = rand(50, N);    %
progC = c <= 0.001; %

prog = [progA;progB;progC];

% a) P(B|A) = P(B e A) / P(A) 
%           = c.f.(B e A) / c.f.(A)
% A = "programa tem um erro"
% B = "programa é do Carlos"
cfA = sum(prog) == 1;
% B e A = "programa do Carlos tem um erro"
cfBA = sum(progC) == 1;

alinA = cfBA / cfA

% b) De quem é mais provável ser o programa?
pA = sum(sum(progA) == 1) / N
pB = sum(sum(progB) == 1) / N
pC = sum(sum(progC) == 1) / N