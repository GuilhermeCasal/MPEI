%% 2. Considere sequencias de d ˆ ´ıgitos ´ımpares de 1 a 9 com as seguintes propriedades:
%% • todas as sequencias comec¸am por ˆ 9;
%% • na segunda posic¸ao da sequ ˜ encia podemos ter ˆ 1 ou 3, com igual probabilidade;
%% • na terceira posic¸ao e seguintes podem aparecer os d ˜ ´ıgitos 3, 5 e 9;
%% • os in´ıcios de sequencia ˆ 913, 915 e 919 sao equiprov ˜ aveis; ´
%% • da segunda para a terceira posic¸oes a transic¸ ˜ ao de ˜ 3 para 5 tem probabilidade 0.6 e nao˜ e poss ´ ´ıvel
%% a transic¸ao de ˜ 3 para 3;
%% • da terceira posic¸ao em diante as probabilidades s ˜ ao as assinaladas na figura abaixo. ˜
%% (a) Complete o diagrama de estados abaixo (incompleto!...) relativo a cadeia de Markov correspon- `
%% dente indicando todos os estados e transic¸oes poss ˜ ´ıveis segundo o enunciado. Crie em Matlab a
%% matriz de transic¸ao de estados ( ˜ T) correspondente.



T = [1/3 1/4 0
     1/3 11/20 1/2
     1/3 1/5 1/2];
format rat;
T
sum(T)
%T>=0 & T<=1 Para provar que é estocastica




%ALINEA C
v0 = [60 15 15]'/90
v30 = T^30 *v0;
format short
n = v30 * 90


