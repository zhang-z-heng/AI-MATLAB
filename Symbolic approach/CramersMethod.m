%A*A^-1 = A^-1*A = I
%X = A^-1*B
%Inverse Matrix
%A =[A B;C D]
%DET(A) = |AD-BC|
A = [1 2 1;2 6 1;1 1 4];
b = [2; 7; 3];
X = inv(A)*b

%Singular
% A = [1 2 3 4;2 4 6 8;9 8 7 6;1 3 2 8];
% inv(A)
% det(A)

%Plot the planes in 3D
% syms y z
% x1=-y-z;
% x2=y-z;
% x3=-3*z;
% hold on
% mesh(x1,y,z);
% mesh(x2,y,z);
% mesh(x3,y,z);
% hold off
% title('3D Plot')

% %function to check matrix condition
% A = [1 2 3;2 4.00001 6;9 8 7];cond(A)
% B = [1 2 3;2 5 6;9 8 7];cond(B)

%Linear system
[v,d] = eig([2 -12;1 -5])
A = [0 -6 -1;6 2 -16;-5 20 -10];
x0 = [1 1 1]';
X = [];
for t = 0:.01:1
    X =[X expm(t*A)*x0];
end
plot3(X(1,:),X(2,:),X(3,:),'-o');
xlabel('x_1');
ylabel('x_2');
zlabel('x_3');
grid on;
axis tight square;