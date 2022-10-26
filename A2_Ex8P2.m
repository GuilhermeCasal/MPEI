%8. Assumindo que o numero de erros tipogr ´ aficos numa p ´ agina de um livro tem uma distribuic¸ ´ ao de Poisson ˜
%com λ = 0.02, calcule a probabilidade de que exista no maximo 1 erro num livro de 100 p ´ aginas. ´
%Considere que o numero de erros em cada p ´ agina ´ e independente do n ´ umero de erros nas outras p ´ aginas.

lambda = 0.02 * 100; %0.02 é erro de uma pagina e as paginas sao independentes
probA = 0;
for k = 0:1
    pk = ((lambda^k)/factorial(k)) * (exp(-lambda));
    probA = probA + pk;
end