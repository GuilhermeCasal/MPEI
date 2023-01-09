%% 2. Considere a func¸ao Matlab ˜ string2hash()1 que implementa duas func¸oes de dispers ˜ ao diferentes. ˜
%% Considere ainda 2 func¸oes Matlab fornecidas que s ˜ ao adaptac¸ ˜ oes para Matlab das func¸ ˜ oes de dispers ˜ ao˜
%% hashstring()2 e DJB31MA()3. Utilizando separadamente cada uma destas quatro func¸oes de dispers ˜ ao, simule a inserc¸ ˜ ao das chaves ˜
%% criadas no exerc´ıcio 1a) em 3 Chaining Hash Tables, uma de tamanho 5 × 105
%% , outra de tamanho 106 e a terceira de tamanho 2 × 106. Para cada uma das simulac¸oes (4 func¸ ˜ oes de dispers ˜ ao˜ × 3 tamanhos):

%% (a) Guarde um vetor com os hashcodes obtidos.

N = 5e5;
palavras = generator_uniform(N,2,20);
T = 1e5; %hash table size

hashcodes = zeros(size(palavras))
num_atribuicoes = zeros(1,T)
tic
for i = 1:N
    hash = string2hash(palavras{i});
    hash = rem(hash,T);
    
    %alinea b)
    hashcodes(i) = hash;
    num_atribuicoes(hash) = num_atribuicoes(hash) + 1;

    fprintf(1, "%-20s -> %d\n", palavras{i},hash);
end
tempo = toc;

%parte 3 colisoes
num_colisoes = sum(num_atribuicoes > 1)
num_colisoes / T
tempo

