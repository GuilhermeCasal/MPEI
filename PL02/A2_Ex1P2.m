
%valores possiveis para a v.a. X
x = 1:6; 
probs = ones(1,6)/6; % cfav / cposs 
                    %função ones cria matriz com "uns", a dividir por 6
                    %fica 1/6 em todos os espaços da matriz 

figure(1)
subplot(1,2,1)  %definir as figuras dos graficos (linhas, colunas, seleçao da figura)
        
stem (x,probs) %fmp
xlim([0 7]) % limites do grafico ser de 0 a 7 
grid on %ativa grelha 

%ALINEA B)
subplot(1,2,2)
fx = cumsum(probs); %soma comulativa ex: primeira prob é 1/6 a segunda sera 2/6 ...
stairs([0 x 7], [0 fx 1]);
xlim([0 7])
ylim([0 1.1])
grid on



