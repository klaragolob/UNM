function [ c ] = mantisa(d, x)
% d - mantisa
% x - število, ki ga bomo zaokrožili
eks = floor(log10(x))+1;
a = x/((10^(eks))*(10^(-d)));
b = round(a);
c = b*((10^(eks))*10^(-d));

end

