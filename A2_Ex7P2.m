%7. Suponha que o numero de mensagens que chega a um servidor de ´ email segue uma lei de Poisson com
%media de 15 (mensagens por segundo). Calcule a probabilidade de num intervalo de um segundo: ´
%(a) o servidor nao receber nenhuma mensagem; ˜
%(b) o servidor receber mais de 10 mensagens.


%ALINEA A)

lambda = 15;
erro = 0;
probA = ((lambda^erro)/factorial(erro)) * (exp(-lambda));

%ALINEA B)

p = 0;
for k = 0:10
    pk= ((lambda^k)/factorial(k)) * (exp(-lambda));
    p = p + pk;
end

probB = 1 - p; 