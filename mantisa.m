function [ c ] = mantisa(d, x)
% d - mantisa
% x - �tevilo, ki ga bomo zaokro�ili
eks = floor(log10(x))+1;
a = x/((10^(eks))*(10^(-d)));
b = round(a);
c = b*((10^(eks))*10^(-d));

end

