%Mean Median Mode Quartile
%prctile percentiles of a data set
%Mode most frequent values in array
%Range Interquartile Range
%Variance std = var^(1/2)
% load stockreturns;
% x4 = stockes(:,4);

%Figures
% x = 1:14;
% freqy = [1 0 1 0 4 0 1 0 3 1 0 0 1 1];
% subplot(1,3,1);
% bar(x,freqy);
% xlim([0 15]);
% subplot(1,3,2);
% area(x,freqy);
% xlim([0 15]);
% subplot(1,3,3);
% stem(x,freqy);
% xlim([0 15]);

x = [1 3 5 5 5 5 7 9 9 9 10 13 14];
count = zeros(length(x)+1);
numsample = length(count);
for i=1:(length(x)+1)
    count(i) = length(find(x==i));
end
subplot(1,3,1);
bar(1:numsample,count,'stacked'); 
xlim([0 15]);ylim([0 5]);
% subplot(1,3,2);
% area(1:numsample,count,'stacked'); 
% xlim([0 15]);ylim([0 5]);
% subplot(1,3,3);
% stem(1:numsample,count,'stacked'); 
% xlim([0 15]);ylim([0 5]);
% x=unique(A);
% [f,xout]=hist(A,x);
% subplot(1,3,1);  bar(x,f);  xlim([0 15]); 
% subplot(1,3,2);  area(x,f);  xlim([0 15]); 
% subplot(1,3,3);  stem(x,f);  xlim([0 15]);

