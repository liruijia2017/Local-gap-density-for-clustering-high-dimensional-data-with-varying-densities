function [input,y] = moonShape(num,sigmaNoise)

t = pi:-pi/(num-1):0;
input(1:num, 1) = 1 + (sin(t)' + randn(num,1)*sigmaNoise);
input(1:num, 2) = 2 + (cos(t)' + randn(num,1)*sigmaNoise);

y = ones(num,1);

 

