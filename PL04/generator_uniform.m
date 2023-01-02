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
function lst = generator_uniform(N,imin,imax,alphabete)

%N = 10
%imin = 5
%imax = 20

if nargin < 4
    alphabete = ['a':'z' 'A':'Z' '0':'9']
end

%Obter comprimentos
comprimento = randi([imin, imax], 1, N)

lst = cell(N,1);

%gerar 1 a 1 as palavras 
for i=1:N
    pos = randi([1, length(alphabete)], 1, comprimento(i));
    word = alphabete(pos);
    
    % fprintf(1, '%2d - %d - %s\n', i, comprimento(i), word) sem o
    % generator faz print só para ver como está a funcionar

    % Guardar em cell Array
    lst{i} = word;
end

