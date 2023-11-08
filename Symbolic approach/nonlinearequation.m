%DC Motor System Identification
%TOOLBOX cftool()
%interpolation 
%interp1()
% x = linspace(0, 2*pi, 40);
% x_m = x;
% x_m([11:13, 28:30]) = NaN;
% y_m = sin(x_m);
% plot(x_m, y_m,'ro','MarkerFaceColor','r');
% xlim([0,2*pi]);
% ylim([-1.2,1.2]);
% box on;
% set(gca, 'FontName', 'Symbol', 'FontSize', 16);
% set(gca, 'XTick', 0:pi/2:2*pi);
% set(gca, 'XTickLabel', {'0','p/2','p','3p/2','2p'});
% m_i = ~isnan(x_m);
% y_i = interp1(x_m(m_i),y_m(m_i),x);
% hold on;
% plot(x,y_i,'-b','LineWidth',2);
% hold off;

%Spline Interpolation
% x = linspace(0, 2*pi, 40);
% x_m = x;
% x_m([11:13, 28:30]) = NaN;
% y_m = sin(x_m);
% plot(x_m, y_m,'ro','MarkerFaceColor','r');
% xlim([0,2*pi]);
% ylim([-1.2,1.2]);
% box on;
% set(gca, 'FontName', 'Symbol', 'FontSize', 16);
% set(gca, 'XTick', 0:pi/2:2*pi);
% set(gca, 'XTickLabel', {'0','p/2','p','3p/2','2p'});
% m_i = ~isnan(x_m);
% y_i = spline(x_m(m_i),y_m(m_i),x);
% hold on;
% plot(x,y_i,'-g','LineWidth',2);
% hold off;
% h = legend('Original','Linear','Spine');
% set(h,'FontName','Times New Roman');

%Exercise
% x_ft = [0 0.25 0.75 1.25 1.5 1.75 1.875 2 2.125 2.25];
% y_ft = [1.2 1.18 1.1 1 0.92 0.8 0.7 0.55 0.35 0];
% x=linspace(0,2.25);
% y1=interp1(x_ft,y_ft,x);
% y2=interp1(x_ft,y_ft,x,'cubic');
% y3=interp1(x_ft,y_ft,x,'spline');
% hold on
% subplot(2,2,1); plot(x,y1,'-k','LineWidth',1.5);xlim([0,2.25]);    %需要画在一个图框中，就把subplot(2,2,i)部分删掉
% subplot(2,2,2); plot(x,y2,'--r','LineWidth',1.5);xlim([0,2.25]);
% subplot(2,2,3); plot(x,y3,'-.c','LineWidth',1.5);xlim([0,2.25]);
% subplot(2,2,4); plot(x_ft,y_ft,'og','LineWidth',1.5);xlim([0,2.25]);
% hold off

%Cubic Spline vs Hermite Polynomial
% x = -3:3;
% y = [-1 -1 -1 0 1 1 1];
% t = -3:.01:3;
% s = spline(x,y,t);
% p = pchip(x,y,t);
% hold on;
% plot(t,s,':g','LineWidth',2);
% plot(t,p,'--b','LineWidth',2);
% plot(x,y,'ro','MarkerFaceColor','r');
% hold off;
% box on;
% set(gca,'FontSize',16);
% h = legend('Original','Spline','Hermite');

%2D interpolation
xx = -2:.5:2;
yy = -2:.5:3;
[X,Y] = meshgrid(xx,yy);
Z = X.*exp(-X.^2-Y.^2);
surf(X,Y,Z);
hold on;
plot3(X,Y,Z+0.01,'ok','MarkerFaceColor','r')
xx_i = -2:.1:2;
yy_i = -2:.1:3;
[X_i,Y_i] = meshgrid(xx_i,yy_i);
Z_i = interp2(xx,yy,Z,X_i,Y_i);
surf(X_i,Y_i,Z_i);
hold on;
plot3(X,Y,Z+0.01,'OK','MarkerFaceColor','r')
Z_c = interp2(xx,yy,Z,X_i,Y_i,'cubic');
surf(X_i,Y_i,Z_c);
hold on;
plot3(X,Y,Z+0.01,'ok','MarkerFaceColor','r');
hold off;