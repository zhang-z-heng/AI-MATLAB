% marks = [80 81 81 84 88 92 92 94 96 97];
% boxplot(marks);
% prctile(marks,[25 50 75])

%Skewness
%left skewed mean<median<mode
%right-skewed mode<median<mode
%symmetric mean = mode = median
% X = randn([10 3])*3;
% X(X(:,1)<0,1)= 0;
% X(X(:,3)>0,3) = 0;
% boxplot(X,{'Right-skewed','Symmetric','Left-skewed'});
% y = skewness(X)
% 
% %Kurtosis峰度
% %t-test
% load stockreturns;
% x1 = stocks(:,3);
% x2 = stocks(:,10);
% boxplot([x1,x2],{'3','10'});
% [h,p] = ttest2(x1,x2)

%Simple Linear Regression
%polynomial curve fitting
% x = [-1.2 -0.5 0.3 0.9 1.8 2.6 3.0 3.5];
% y = [-15.6 -8.5 2.2 4.5 6.6 8.2 8.9 10.0];
% fit = polyfit(x,y,1);
% xfit = [x(1):0.1:x(end)];
% yfit = fit(1)*xfit + fit(2);
% plot(x,y,'ro',xfit,yfit);
% set(gca,'FontSize',14);
% legend('data points','best-fit','location','southwest');

%Exercise
mV=[0.025 0.035 0.050 0.060 0.080];
t=[20 30 40 50 60];
p=polyfit(t,mV,1);
t1=10:1:70;
y1= polyval(p,t1);
hold on
plot(t,mV,'ob');
plot(t1,y1,'-r');
hold off
xlim([20 60]);
ylim([0.02 0.08]);
xlabel('Temperature (^oC)');
ylabel('TC output (mV)');
title('Calibration of TC');
legend('date','Predictive value','Location','northwest');






