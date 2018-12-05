function [ A, n_1, n_2, n_inf, n_fro ] = krozne_matrike( a )
%UNTITLED Summary of this function goes here

n = length(a);
A = zeros(n);
A(1:n,1) = a;
for i=2:n
    a = [a(n) a(1:(n-1))];
    A(1:n, i) = a;
end

n_1 = norm(A, 1);
n_2 = norm(A);
n_inf = norm(A, Inf); 
n_fro = norm(A, 'fro');

%primer a = [1,2,3,4,5,6,7,8,9,10]

end
    
