%plot(x,y);
% hold on;
% plot(cos(0:pi/20:2*pi),'or--');
% plot(sin(0:pi/20:2*pi),'xg:');
% hold off;
% %lineSpec

% x = 0:0.5:4*pi;
% y = sin(x);
% h = cos(x);
% w = 1./(1+exp(-x));
% g = (1/(2*pi*2)^0.5).*exp((-1.*(x-2*pi).^2)./(2*2^2));
% plot(x,y,'bd-',x,h,'gp:',x,w,'ro-',x,g,'c^-');
% legend('sin(x)','cos(x)','Sigmoid','Gauss function');
% title('Function Plots');
% xlabel('t = 0 to 2\pi');
% ylabel('values of sin(t) and others');

% x = linspace(0,3);
% y = x.^2.*sin(x);
% plot(x,y);
% line([2,2],[0,2^2*sin(2)]);
% str = '$$ \int_{0}^{2} x^2\sin(x) dx $$'
% text(0.25,2.5,str,'Interpreter','latex');
% annotation('arrow','X',[0.32,0.5],'Y',[0.6,0.4]);

%exercise1
% t = 1 : 0.01 :2;
% f = t.^2;
% g = sin(2*pi*t);
% plot(t,f,'b-',t,g,'or');
% title('Mini Assignment#1');
% xlabel('Time(ms)');
% ylabel('f(t)');
% legend('t^2','sin(2\pit)','location','northwest');

%Graphical Objects
% x = linspace(0,2*pi,1000);
% y = sin(x);
% plot(x,y);
% set(gcf, 'Color', [1 1 1]);
% h = plot(x,y);
% %fetch properties get()
% get(h);
% get(gca);
% %modify properties set()
% set(gca,'XLim',[0,2*pi]);
% set(gca,'YLim',[-1.2,1.2]);
% set(gca,'FontSize',25);
% set(gca,'XTick',0:pi/2:2*pi);
% set(gca,'XTickLabel',0:90:360);
% set(gca,'FontName','Tex');
% set(gca,'XTickLabel',{'0','p/2','p','3p/2','2p'});
% set(h,'LineStyle','-.',...
%     'LineWidth',7.0,'color','g');
% %delete(h);

%Marker Specification
% x = rand(20,1);
% set(gca,'FontSize',18);
% plot(x,'-md','LineWidth',2,'MarkerEdgeColor','k'...
%     'MarkerSize',10);
% xlim([1,20]);

%Multiple Figures figure,plot()
% x = -10:0.1:10;
% y1 = x.^2 -8;
% y2 = exp(x);
% figure,plot(x,y1);
% figure,plot(x,y2);
%figure('Position',[left,bottom,width,height]);
%subplot(m,n,1);%small plots in a figure,m row,n column

t = 0:0.1:2*pi;
x = 3*cos(t);
y = sin(t);
subplot(2,2,1);plot(x,y);axis normal
subplot(2,2,2);plot(x,y);axis square
subplot(2,2,3);plot(x,y);axis equal
subplot(2,2,4);plot(x,y);axis equal tight
grid off
axis off
axis on
box off
box on
grid on
%saveas(gcf,'filename','<formattype>');
