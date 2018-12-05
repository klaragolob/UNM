function [ c ] = regula_falsi(f, a, b, eps)
%regula_falsi je kombinacija bisekcije in sekantne metode za iskanje 
%ni�le funkcije f, za c ne vzamemo sredi��a intervala [a, b]
%ampak prese�i��e sekante skozi (a,f(a)) in (b,f(b)) z abscisno osjo
%nehamo, ko je dol�ina intervala manj�a od epsilona
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
%poiskat mora� vse ni�le
end

