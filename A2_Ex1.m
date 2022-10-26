%Considere fam´ılias com filhos em que a probabilidade de nascimento de rapazes e igual ´ a de nascimento `
%de raparigas:

%a)
%Obtenha por simulac¸ao uma estimativa da probabilidade do acontecimento “ter pelo menos um ˜
%filho rapaz" em fam´ılias com 2 filhos.
N = 10000;
experiencias = rand(2, N);
%rapaz = 1 se >0,5 // rapariga = 0 se <0,5
genero = experiencias > 0.5;
results = sum(genero);
alinA = results >= 1;
probA = sum(alinA) / N

%c)
%Suponha que para uma fam´ılia com 2 filhos escolhida ao acaso, sabemos que um dos filhos e´
%rapaz. Qual a probabilidade do outro filho ser tambem rapaz? Determine o valor te ´ orico desta ´
%probabilidade e estime a mesma probabilidade por simulac¸ao.
alinB = results == 2;
probB = sum(alinB) / N;
probC = probB / probA





