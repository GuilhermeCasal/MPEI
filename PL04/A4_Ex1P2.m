n = 8000;
palavras = 1000;
k = 3;

dicionario = generator_uniform(n, palavras, palavras);
BF = inicializar(n);

for i = 1:palavras
    BF = inserir(dicionario{i}, BF, k);
end
contador = 0;
for i = 1:palavras
    check = verificar(dicionario{i}, BF, k);
    if ~check
        contador = contador + 1;
    end
end
fprintf('Falsos negativos = %d\n', contador);



