function J = calc_distancias(Set,Nu)

J=zeros(Nu,Nu);           % array para guardar distancias
h= waitbar(0,'Calculating');

for n1= 1:Nu,

    waitbar(n1/Nu,h);
        
    for n2= n1+1:Nu,
        u1 = Set{n1,:};
        u2 = Set{n2,:};

        %   dist jaccard entre u1 e u2
        nI = length(intersect(u1,u2));
        nU = length(union(u1,u2));

        dJ = 1 - nI/nU;
        J(n1,n2) = dJ;
    %% Adicionar codigo aqui
    end
end
delete (h)