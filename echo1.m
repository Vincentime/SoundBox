function [] = echo1(delay_ms, depth)

[x, Fe, N] = wavread('son_TP1.WAV');

d = ceil(delay_ms*0.001*Fe);


for iter=1:depth
    
y(1:d) = x(1:d);

for i=d+1:length(x)
    y(i) = ( x(i)+ x(i-d))/2;
end

x(1:length(x)) = y(1:length(x));

end


wavplay(y, Fe);