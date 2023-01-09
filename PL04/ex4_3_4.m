
[Set,Nu,users] = ler_dados('u.data')
%%imagesc(J)
%% Calcula a distancia de Jaccard entre todos os pares pela definiçao.
J = calc_distancias(Set,Nu);
imagesc(J)

SimilarUsers = pares(J,Nu,users,0.4)
SimilarUsers

imagesc(J)
colormap("gray")