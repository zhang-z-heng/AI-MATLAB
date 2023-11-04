
% for i = 1:10
%     x = linspace(0,10,101);
%     plot(x, sin(x+1));
%     print(gcf,'-deps',strcat('plot', num2str(i),'.ps'));
% end


% a = 3;
% if rem(a,2) == 0
%     disp('a is even')
% else 
%     disp('a is odd')
% end


% input_num = 1;
% switch input_num
%     case -1
%         disp('negative 1');
%     case 0
%         disp('zero');
%     case 1
%         disp('positive 1');
%     otherwise
%         disp('other value');
% end


% n = 1;
% while prod(1:n) < 1e100%(n!<10^100)
%     n = n+1;        
% end
% disp(n);
% 
% for n = 1:2:10
%     a(n) = 2^n;
%     if a(n) ~= 0
%         disp(a(n))
%     end    
% end
% %%
% tic
% for ii = 1 : 2000
%     for jj = 1 : 2000
%         A(ii,jj) = ii + jj;
%     end
% end
% toc
% %%
% tic
% A = zeros(2000,2000);
% for ii = 1 : size(A,1)
%     for jj = 1 : size(A,2)
%         A(ii,jj) = ii + jj;
%     end
% end
% toc
% % preallocating is faster than no preallocating
% 

% A = [0 -1 4;9 -14 25;-34 49 64];
% disp (A);
% B = A;
% disp (B);
% for n = 1:9
%     if B(n) < 0
%         B(n) = 1;
%     else
%         B(n) = B(n);
%     end
% end
% disp (B);

% x = 2; k = 0; error = inf;
% error_threshold = 1e-32;
% while error > error_threshold
%     if k > 100
%         break
%     end
%     x = x - sin(x)/cos(x);
%     error = abs(x - pi);
%     k = k + 1;
% end

%function y = mean(x);
%function x = freebody(x0,v0,t)
%x = x0 + v0.*t + 1/2*9.8*t.*t;

% f = @(x) exp(-2*x);
% x = 0 : 0.1: 2;
% plot(x, f(x));

function F2C(e)
e=['Please Input number to F:'];
F=input(e);
a=isempty(F);
while(a==0)
        C=(F-32)/1.8;
        d=['C is ',num2str(C),'.'];
        disp(d);
        F=input(e);
        a=isempty(F);
end
f=['Input is end.'];
disp(f);