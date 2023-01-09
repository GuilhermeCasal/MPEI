for n1 = 1:Nu
    waitbar(n1/Nu,h);
end

k = 100;

for hf = 1: k

    conjunto = Set{n1,:};
    hc = []
    for i = 1:length(conjunto)
        %aplica funcao hash
        elemento = conjunto(i);
        hc = %%%%% com numeros string2hash([elemento num2str(hf)])
    end
    Assinatura(n1,hf) = min(hc)
end

for n1= 1:Nu,
        
    for n2= n1+1:Nu,
        u1 = Assinatura(n1);
        u2 = Assinatura(n2);
    end
end
