function [x, X, k] = iteracija (g, x0, tol, N)
xr = x0;
k = 0;
X = [];
razlika = 0;
while (k == 0 )|| ((k <= N) && (razlika > tol))  
    x = g(xr);
    razlika = abs(xr - x);
    xr = x;
    k = k + 1;
    X = [X; x];
end
x
X
k
end