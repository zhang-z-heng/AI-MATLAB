%Values of Polynomials
% a = [9,-5,3,7];
% x = -2:.01:5;
% f = polyval(a,x);
% plot (x,f,'LineWidth',2);
% xlabel('x');
% ylabel('f(x)');
% set(gca,'FontSize',14);

%Polynomial Differentiation
%polyder()
% p = [5 0 -2 0 1];
% polyder(p);
%f'(7)=?
%polyval(polyder(p),7);

%exercise
% a = conv([20,-7,5,10],[0 4 12 -3]);
% x = -2 :0.01:1;
% f = polyval(a,x);
% plot(x,f,'LineWidth',2,'Linestyle','--','color','b');
% hold on
% z = polyval(polyder(a),x);
% plot(x,z,'LineWidth',2,'color','r');
% xlabel('x');
% ylabel('f(x)');
% set(gca,'FontSize',14);
% legend('f(x)',"f'(x)");

% %Polynomial Integration polyint()
% p = [5 0 -2 0 1];
% polyint(p,3);
% polyval(polyint(p,3),7);

%Numerical Differentiation
%diff()
% x = [1 2 5 2 1];
% diff(x);
% x = [1 2];
% y = [5 7];
% slope = diff(y)./diff(x)
% x0 = pi/2;
% h = 0.1;
% x = [x0 x0+h];
% y = [sin(x0) sin(x0+h)];
% m = diff(y)./diff(x)

%exercise
% x0 = pi/2;
% for i = 1:8
%     h(i) = 1/10.^i;
%     x = [x0 x0+h(i)];
%     y = [sin(x0) sin(x0+h(i))];
%     m = diff(y)./diff(x)
% end

%find f' in [0,2]
% x = 0:pi/8:2*pi;
% y = sin(x);
% m = diff(y)./diff(x);
% plot(x,y);
% hold on
% plot(x(1:length(x)-1),m,'--o');

%Various Step Size
% g = colormap(lines);
% hold on;
% for i = 1:4
%     x = 0:power(10,-i):pi;
%     y = sin(x);
%     m = diff(y)./diff(x);
%     plot(x(1:end-1),m,'Color',g(1,:));
% end
% hold off;
% set(gca,'XLim',[0,pi/2]);
% set(gca,'YLim',[0,1.2]);
% set(gca,'FontSize',18);
% set(gca,'FontName','Symbol');
% set(gca,'XTick',0:pi/4:pi/2);
% set(gca,'XTickLabel',{'0','pi/4','pi/2'});
% h = legend('h-0.1','h-0.01','h-0.001','h-0.0001');
% set(h,'FontName','Times New Roman');
% %box on;

% %exercise
% g = colormap(lines);
% hold on
% for i = 1:3
%     x = [0 :power(10,-i):2*pi];
%     y = exp(-x).*sin(x.^2/2);
%     m = diff(y)./diff(x);
%     m = [0 m];
%     plot(x,m)
% end
% hold off

%Second and Third Derivatives
% x = -2:0.005:2;
% y = x.^3;
% m = diff(y)./diff(x);
% m2 = diff(m)./diff(x(1:end-1));
% 
% plot(x,y,x(1:end-1),m,x(1:end-2),m2);
% xlabel('x','FontSize',18);
% ylabel('y','FontSize',18);
% legend('f(x) = x^3',"f''(x)","f''''(x)",'Location','SouthEast');
% set(gca,'Fontsize',18);

%Numerical Integration
%Midpoint Rule
% h = 0.05;
% x = 0 : h: 2;
% midpoint = (x(1:end-1)+x(2:end))./2;
% y = 4*midpoint.^3;
% s = sum(h*y)
%Trapezoid Rule
% h = 0.05;
% x = 0:h:2;
% y = 4*x.^3;
% %s = h*trapz(y)
% trapezoid = (y(1:end-1)+y(2:end))/2;
% s = h*sum(trapezoid)
%1/3 Simpson's
% h = 0.05;
% x = 0:h:2;
% y = 4*x.^3;
% s = h/3*(y(1)+2*sum(y(3:2:end-2))+4*sum(y(2:2:end))+y(end))

%Function Handles
%pointer to a function
% function[y] = xy_plot(input,x)
% %xy_plot receives the handle of a function and plot
% %function of x
% y = input(x);
% plot(x,y,'r--');
% xlable('x');
% ylabel('function(x)');
% end
% 
% xy_plot(@sin,0:0.01:2*pi);
% % xy_plot(@cos,0:0.01:2*pi);
% % xy_plot(@exp,0:0.01:2*pi);

%integration numerical
% y = @(x)1./(x.^3-2*x-5);
% integral(y,0,2)

%Double &&Triple Integral
f = @(x,y) y.*sin(x) +x.*cos(y);
integral2(f,pi,2*pi,0,pi)

f = @(x,y,z) y.*sin(x)+z.*cos(y);
integral3(f,0,pi,0,1,-1,1)
