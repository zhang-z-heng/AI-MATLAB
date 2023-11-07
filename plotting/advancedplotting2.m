%fill()
%stop sign
% t = (1:2:15)'*pi/8;
% x = sin(t);
% y = cos(t);
% fill(x,y,'r');
% axis square off;
% text(0,0,'STOP','Color','w','FontSize',80,...
%     'FontWeight','bold','HorizontalAlignment','center');

%WAIT sign
% t = 0 : pi/2:2*pi;
% x = sin(t);
% y = cos(t);
% fill(x,y,'y');
% text(0,0,'WAIT','Color','black','FontSize',80,...
% 'FontWeight','bold','HorizontalAlignment','center');

%Color space
%[R G B] 0 minimum 1 maximum 8-bit equivalence
%[0 0 0] [255 255 255]

%Visualizing Data as an Image
% [x,y] = meshgrid(-3 :.2:3, -3:.2:3);
% z = x.^2 + x.*y +y.^2;
% surf(x,y,z);
% box on;
% set(gca,'FontSize',16);
% zlabel('z');
% xlim([-4 4]);
% xlabel('x');
% ylim([-4 4]);
% ylabel('y');
% % imagesc(z);
% % axis square;
% % xlabel('x');
% % ylabel('y');
% colorbar;
% colormap(hot);
% colormap(cool);

%create a custom green color map
% x = [1:10; 3:12; 5:14];
% imagesc(x);
% colorbar;
% map = colormap;
% for i = 1:length(map)
%     map(i,:) = [0 (i-1)/256 0];
% end
% colormap(map);

%3D plot
% x = 0: 0.1 : 3*pi;
% z1 = sin(x);
% z2 = sin(2*x);
% z3 = sin(3*x);
% y1 = zeros(size(x));
% y3 = ones(size(x));
% y2 = y3./2;
% plot3(x,y1,z1,'r',x,y2,z2,'b',x,y3,z3,'g');
% grid on;
% xlabel('x-axis');
% ylabel('y-axis');
% zlabel('z-axis');

% t = 0:pi/50:10*pi;
% plot3(sin(t),cos(t),t);
% grid on;
% axis square;

% turns = 40*pi;
% t = linspace(0,turns,4000);
% x = cos(t).*(turns -t)./turns;
% y = sin(t).*(turns-t)./turns;
% z = t./turns;
% plot3(x,y,z);
% grid on;

%Principles for 3D surface plots
%meshgrid
% x = -3.5:0.2:3.5;
% y = -3.5:.2:3.5;
% [X,Y] = meshgrid(x,y);%produce 2 matrix
% Z = X.*exp(-x.^2-Y^2);
% subplot(1,2,1);
% mesh(X,Y,Z);
% axis square;
% subplot(1,2,2);
% contour(X,Y,Z);
% axis square;

%Various Contour Plots
% x = -3.5:0.2:3.5;
% y = -3.5:.2:3.5;
% [X,Y] = meshgrid(x,y);%produce 2 matrix
% Z = X.*exp(-x.^2-Y^2);
% subplot(1,3,1);
% contour(Z,[-.45:.05:.45]);
% axis square;
% subplot(1,3,2);
% [C,h] = contour(Z);
% clabel(C,h);
% axis square;
% subplot(1,3,3);
% contourf(Z);
% axis square;

%meshc and surfc
%View Angle
sphere(50);
shading flat;
light('Position',[1 3 2]);
light('Postion',[-3 -1 3]);
material shiny;
axis vis3d off;
set(gcf,'Color',[1 1 1]);
view(-45,20);
%patch()
%