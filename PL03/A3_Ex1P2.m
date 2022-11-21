%% 1. Relativamente ao problema 6 da secc¸ao anterior:
%% (a) Confirme os valores calculados nas al´ıenas (f) e (g) atraves de simulac¸ ´ ao (fac¸a a m ˜ edia de v ´ arias ´
%% simulac¸oes). Use o c ˜ odigo Matlab na ´ ultima p ´ agina como base para criar a suas simulac¸ ´ oes.

% a state transition matrix example
H = [0.5 0.5 0;
0.5 0.4 0;
0 0.1 1];
% how to use crawl()
state = crawl(H, 1, 3)
% Note:
% if the Markov chain has more than 1 absorbing state the third argument
% must be a vector with the absorbing states
% for example in a chain with 5 states and considering that
% states 4 and 5 are absorbing states:
% state = crawl(H5, 1, [4 5])