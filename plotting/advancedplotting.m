% x = logspace(-1,1,100);
% y = x.^2;
% subplot(2,2,1);
% plot(x,y);
% title('Plot');
% subplot(2,2,2);
% semilogx(x,y);
% title('Semilogx');
% subplot(2,2,3);
% semilogy(x,y);
% title('Semilogy');
% subplot(2,2,4);
% loglog(x,y);
% title('loglog');
% set(gca,'XGrid','on');

% %plotyy()
% x = 0:0.01:20;
% y1 = 200*exp(-0.05*x).*sin(x);
% y2 = 0.8*exp(-0.5*x).*sin(10*x);
% [AX,H1,H2] = plotyy(x,y1,x,y2);
% set(get(AX(1),'Ylabel'),'String','Left Y-axis');
% set(get(AX(2),'Ylabel'),'String','Right Y-axis');
% title('Labeling plotyy');
% set(H1,'LineStyle','--');
% set(H2,'LineStyle',':');

%Histogram
% y = randn(1,1000);
% subplot(2,1,1);
% hist(y,10);
% title('Bins = 10');
% subplot(2,1,2);
% hist(y,50);
% title('Bins = 50');

%Bar Charts
% x = [1 2 5 4 8];
% y = [x;1:5];
% subplot(1,5,1);
% bar(x);
% title('A bargraph of vector x');
% subplot(1,5,2);
% bar(y);
% title('A bargraph of vector y');
% subplot(1,5,3);
% bar3(y);
% title('A 3D bargraph');
% subplot(1,5,4);
% bar(y,'stacked');
% title('stacked');
% subplot(1,5,5);
% barh(y);
% title('Horizontal');

%Pie Charts
% a = [10 5 20 30];
% subplot(1,3,1);pie(a);
% subplot(1,3,2);pie(a,[0,0,0,1]);%splitted pie
% subplot(1,3,3);pie3(a,[0,0,0,1]);

%polar chart
% x = 1:100;
% theta = x/10;
% r = log10(x);
% subplot(1,4,1);
% polar(theta,r);
% theta = linspace(0, 2*pi);
% r = cos(4*theta);
% subplot(1,4,2);
% polar(theta,r);
% theta = linspace(0, 2*pi, 6);
% r = ones(1, length(theta));
% subplot(1,4,3);
% polar(theta,r);
% theta = linspace(0, 2*pi);
% r = 1-sin(theta);
% subplot(1,4,4);
% polar(theta, r);

% %Stairs and Stem Charts
% x = linspace(0, 4*pi, 40);
% y = sin(x);
% subplot(1,2,1);
% stairs(y);
% subplot(1,2,2);
% % stem(y);

exercese
t = 0:0.1:10;
f = sin(pi*t.^2/4);
plot(t,f);
hold on;
x = 0:0.2:10;
y = sin(pi*x.^2/4);
stem(x,y);
set(gca,'YTick',-1:0.5:1);
set(gca,'XTick',0:1:10);

%Boxplot and Error Bar
%boxplot()
% x = 0:pi/10:pi;
% y = sin (x);
% e = std(y)*ones(size(x));
% errorbar(x,y,e);

