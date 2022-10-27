%9. Considerando a variavel aleat ´ oria ´ X, representativa das classificac¸oes dos alunos de um determinado ˜
%curso, cont´ınua 3 e com distribuic¸ao normal ˜4(media ´ 14 e desvio padrao˜ 2), obtenha atraves de simulac¸ ´ ao˜
%uma estimativa para as probabilidades de:
%(a) um aluno do curso ter uma classificac¸ao entre ˜ 12 e 16;
%(b) os alunos terem classificac¸oes entre 10 e 18; ˜
%(c) um aluno passar (ter classificac¸ao maior ou igual a 10); ˜
%(d) verifique a correc¸ao dos resultados anteriores usando a func¸ ˜ ao Matlab ˜ normcdf().
N = 1000;
randn(1, N);
sigma = 2;
media = 14;
x = (x * sigma) + media;
histogram(x);

%ALINEA A)
casosFav = sum((x >= 12) & (x<=16));
probA = sum(casosFav) / N;

%ALINEA B)
casosFav = sum((x >= 10) & (x<=18));
probB = sum(casosFav) / N;

%ALINEA C)
casosFav = sum(x > 10);
probC = sum(casosFav) / N;

pt = 1 - normcdf(10, 14, 2)