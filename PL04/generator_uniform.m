%% Hash Table, e um dos conceitos que a suportam, Hash Functions (func¸oes de dispers ˜ ao). ˜
%% 1. Crie uma func¸ao para gerar chaves constitu ˜ ´ıdas por caracteres. O comprimento (i.e., o numero de ca- ´
%% racteres) de cada chave deve ser escolhido aleatoriamente (distribuic¸ao uniforme) entre ˜ imin e imax. A
%% func¸ao deve ter como par ˜ ametros de entrada o n ˆ umero ´ N de chaves a gerar, os valores de imin e imax, um
%% vector com os caracteres a usar nas chaves e um vector com as probabilidades de cada um dos caracteres
%% a utilizar. Se a func¸ao for chamada sem o ˜ ultimo par ´ ametro, deve considerar os caracteres equiprov ˆ aveis ´
%% (ver a documentac¸ao da func¸ ˜ ao˜ nargin).
%% A func¸ao deve devolver um "cell array"com o conjunto de chaves geradas garantindo que as chaves s ˜ ao˜
%% todas diferentes.

%% (a) Gere um conjunto de N = 105 chaves usando todas as letras maiusculas e min ´ usculas ( A% a %Z  e ´
%% %a% a  z’) com igual probabilidade e em que imin = 6 e imax = 20.
function lst = generator_uniform(N, imin, imax, alphabete)

%se tiver menos de 4 parametros de entrada na função vai assumir este
%alfabeto
if nargin < 4
    alphabete = ['a':'z' 'A':'Z' '0':'9'];
end

% Obter comprimentos

comprimentos = randi([imin,imax],1,N);

%inicilizar cell array
lst = cell(N,1);

for i = 1:N
    pos = randi([1, length(alphabete)], 1, comprimentos(i));
    word = alphabete(pos);
    lst{i} = word;
end

