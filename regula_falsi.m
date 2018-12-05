function [ c ] = regula_falsi(f, a, b, eps)
%regula_falsi je kombinacija bisekcije in sekantne metode za iskanje 
%nièle funkcije f, za c ne vzamemo središèa intervala [a, b]
%ampak preseèišèe sekante skozi (a,f(a)) in (b,f(b)) z abscisno osjo
%nehamo, ko je dolžina intervala manjša od epsilona
%N = 100;
%k = 0;
razlika = f(a);
while (razlika > eps)
    c = a + ((f(a).*(f(a)-f(b)))./(a-b));
    razlika = f(c);
    %k = k + 1;
    if f(c)==0
        c;
    else if f(c)*f(b)>0
        b = c;
    else a = c;
    end
c;
end

%primer f = @(x)5*cos(x-exp(x))-x
%primer a = 0
%primer b = 3
%poiskat moraš vse nièle
end

