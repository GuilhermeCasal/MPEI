%2. Considere a seguinte "danc¸a” de grupos: Divide-se uma turma em 3 grupos (A, B e C) no in´ıcio do
%semestre e no final de cada aula efectuam-se os seguintes movimentos:
%• 1/3 do grupo A vai para o grupo B e outro 1/3 do grupo A vai para o grupo C;
%• 1/4 do grupo B vai para A e 1/5 de B vai para C
%• Metade do grupo C vai para o grupo B; a outra mantem-se no grupo C.

%% (a) Crie em Matlab a matriz de transic¸ao de estados que representa as trocas entre grupos. ˜
%% Confirme que se trata de uma matriz estocastica.
%     A     B     C
T = [1/3   1/4    0  
     1/3   11/20  1/2
     1/3   1/5    1/2];
format rat;
T
sum(T)
%T>=0 & T<=1 Para provar que é estocastica

%% (b) Crie o vector relativo ao estado inicial considerando que no total temos 90 alunos, o grupo A tem
%% o dobro da soma dos outros dois e os grupos B e C tem o mesmo n ˆ umero de alunos.
v1 = [60 15 15]'/90;

%% (c) Quantos elementos integrarao cada grupo no fim da aula 30 considerando como estado inicial o ˜
%% definido na al´ınea anterior?
numAulas = 30;
for aula = 2:numAulas
    v1 = T*v1;
end
format short
RespostaC = v1*90

%OU 
%v30 = T^30 *v1;
%format short
%n = v30 * 90

%% Quantos elementos integrarao cada grupo no fim da aula 30 considerando que inicialmente se dis- ˜
%% tribuiram os 90 alunos equitativamente pelos 3 grupos?

v2 = [30 30 30]'/90;
aula30 = T^30 * v2;
format short
RespostaD = aula30*90

