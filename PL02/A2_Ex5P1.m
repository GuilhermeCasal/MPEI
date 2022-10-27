N = 1e5;
p_paridade = 0.5;
lancamentos = 2;
num_faces = 6;
p_serX = 1/6;

rolls = randi(num_faces, lancamentos, N);

%ALINEA A)
pA = sum(sum(rolls)==9)/N;
fprintf("A probabilidade da soma dos dois lançamentos ser 9 é: %.6f\n",pA);

%ALINEA B)
par = rolls(2,:);
pB = sum(rem(par,2)==0)/N;
fprintf("A probabilidade do segundo valor ser par é: %.6f\n", pB);

%ALINEA C)
ser5 = 0;

for i = 1 : N
    if rolls(1,i)==5 || rolls(2,i)==5
        ser5 = ser5 +1;
    end
end

pC = ser5/(N*lancamentos);
fprintf("A probabilidade de pelo menos um valor ser igual a 5 é: %.6f\n", pC);
%ALINEA D)

nao_ser1 = 0;

for i = 1 : N
    if rolls(1,i) ~= 1 && rolls(2,i) ~= 1
        nao_ser1 = nao_ser1 + 1;
    end
end
pD = nao_ser1/(N*lancamentos);
fprintf("A probabilidade de nenhum dos valores ser 1 é: %.6f\n", pB);
