%Linear Equation
%Gaussian Elimination
% A = [1 2 1;2 6 1;1 1 4];
% B = [2; 7; 3];%';' is important
% r = rref([A B])

%LU Factorization
%A*x = b,A = L^-1*U L^(-1)*U*x = b
% A = [1 1 1;2 3 5;4 6 8];
% [L,U,P] =lu(A);
% inv(L);
%Matrix Left Division
% A = [1 2 1;2 6 1;1 1 4];
% b = [2;7;3];
% x = A\b

%Electric circuit
syms R1 R2 R3 R4 R5 V1 V2
A = [R1 0 0 R1 0;...
    0 R2 0 -R4 R5;...
    0 0 -R3 0 R5;...
    1 -1 0 -1 0;...
    0 1 -1 0 -1];
b = [V1 ; 0 ; V2 ; 0 ; 0];
% X = A\b
I = inv(A)*b;
for i = 1:length(I)
    fprintf('i%d = %s\n', i, char(I(i)));
end