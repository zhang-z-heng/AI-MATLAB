function[y] = xy_plot(input,x)
%xy_plot receives the handle of a function and plot
%function of x
y = input(x);
plot(x,y,'r--');
xlable('x');
ylabel('function(x)');
end