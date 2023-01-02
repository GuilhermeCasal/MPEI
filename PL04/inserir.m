function BF = inserir(elemento, BF, k)
    key = elemento;
    for i = 1:k
        key = [key num2str(i)];
        hc = string2hash(key);
  
        pur = rem(hc, size(BF))+1;
        BF(pur) = 1;
    end
end