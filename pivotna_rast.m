function [ M_bp, M_dp, M_kp ] = pivotna_rast( N )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
g_bp = zeros(N,1);
g_dp = zeros(N,1);
g_kp = zeros(N,1);
for i = 1:N
    a = rand(1,10);
    %zgeneriramo krožno matriko
    n = length(a);
    A = zeros(n);
    A(1:n,1) = a;
    for j=2:n
        a = [a(n) a(1:(n-1))];
        A(1:n, j) = a;
    end
    maksi = max(a);
    %izraèunamo razcepe
    %L U razcep brez pivotiranja
    [L_bp, U_bp] = lubp(A);
    g_bp(i) = max(abs(U_bp(:)))/maksi;
    %L U razcep z delnim pivotiranjem
    [L_dp, U_dp] = lu(A);
    g_dp(i) = max(abs(U_dp(:)))/maksi;
    %L U razcep s kompletnim pivotiranjem
    [L_kp, U_kp] = lukompletno(A);
    g_kp(i) = max(abs(U_kp(:)))/maksi;
   
%izraèunamo povpreèje pivotnih rasti
M_bp = mean(g_bp);
M_dp = mean(g_dp);
M_kp = mean(g_kp);

end

