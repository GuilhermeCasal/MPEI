%%%%%% ALINEA C %%%%%%

T = [0 0.5 0 0.2 0.5 0
    0.2 0 0.2 0 0 0
    0 0.5 0 0.2 0.5 0 
    0.2 0 0.2 0 0 0
    0.2 0 0.2 0.2 0 0
    0.4 0 0.4 0.4 0 0];
cell
N = 1e5;
for i =1:N
state = crawl(T,1,6);
c{i}=state;
end

a = 0
for i=1:N:
    if c{i} == [2,1,4,3]
        a = a+ 1;
    end
end


