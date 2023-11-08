%symbolic x
% % syms x;
% % x+x+x
% x = sym('x');
% y = x^2-2*x-8;

%symbolic root finding solve()
% syms x;
% y = x*sin(x)-x;
% solve (y,x)

% syms x y;
% eq1 = x -2*y -5;
% eq2 = x+ y - 6;
% A = solve(eq1,eq2,x,y)
% display (A.x)
% disp(A.y)

% syms x a b
% solve(a*x.^2-b)

% exercise
% syms x y a b r
% solve ((x-a)^2+(y-b)^2-r^2,x,y)

%exercise
% syms a b c d
% A = [a b; c d];
% inv(A)

%Symbolic Differentiation diff()
% syms x
% y = 4*x^5;
% yprime = diff(y)
%Symbolic Integration int()
% syms x;
% y = x^2*exp(x);
% z =  int(y);
% z = z-subs(z,x,0)%z(0) = 0

%exercise
% syms x
% y = (x^2-x+1)/(x+3);
% z = int (y,0,10)
% double z

%function handle
%fsolve()
% f2 = @(x)(1.2*x+0.3+x*sin(x));
% fsolve(f2,0) 
%(function handle,initial guess)

%exercise
% f1 = @(x)([2*x(1)-x(2)-exp(-x(1));-x(1)+2*x(2)-exp(-x(2))])
% fsolve(f1,[-5,-5])

%fzero()
% f = @(x)x.^2
% fzero(f,0.1)
% fsolve(f,0.1)

%add options,number of iteration,tolenrence
% f = @(x)x.^2
% options = optimset('MaxIter',le3,'TolFun',le-10);
% fsolve(f,0.1,options);
% fzero(f,0.1,options)

%roots()
% roots([1 -3.5 2.75 2.125 -3.875 1.25])
% roots([1 -6 -12 81])

%solvers find the roots
%bracketing methods(bisection method) 二分法
%open methods(newton raphson method)
%Recursive Function

syms U L;%设置上下限
f=@(x) sin(x)+x-1;%要求解的函数
U=input('输入上限U');
L=input('输入下限L');
while U-L>1e-5 %设置误差
    r=(U+L)/2;%将上下限二分
    if f(r)==0
        break;
    end
    if f(r)*f(U)<0
        L=r;
    else
        U=r;
    end
end

