function [ px ] = Horner( pol, x, d)
%funkcija izraèuna vrednosti polinoma pol v toèki x s Hornerjevim
%algoritmom
%   pol .... vektor, ki ima za elemente vodilne koeficiente polinoma
l = length(pol);
px = mantisa(d, (mantisa(d, (pol(1)*x)) + mantisa(d, pol(2))));
for i = 3:l
    px = mantisa(d, (mantisa(d, (px*x)) + mantisa(d, pol(i))));
end  

%primer a = [1, -8, 23, -28, 12]
%primer x = 5.4321
%rezultat mora bit 126.98
end

