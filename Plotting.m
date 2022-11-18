%%%%% Plotting Elemntary Functions %%%%%
%N = 1000; h = 1/N; x=0:h:1;
% Defines the set of points x = 0,h,....,2h,1-h,1
% linspace(a,b,n) => generates n equispaced points between a and b incl.
%x = linspace(0,1,11);
%y = sin(3*pi*x);
%plot(x,y)
%%%%% Titles and Lables %%%%%
%title('Graph of y=sin(3pi x)')
%xlabel('x-axis')
%ylabel('y-axis')
%
%%%%%% Grids & axes %%%%%
% A dotted grid will be added by
% >> grid
%This can be removed using either grid again, or grid off.
% Also you can control the axes display range by using 
% xlim([ xminxmax]) and ylim([ymin ymax])
%%%%% Help plot for styles %%%%%%
%%Hold command holds picture in window%%
%% Subplot(221) or subplot(2,2,1) specifies that the
%% window should be split into a 2x2 array and we select
% the first subwindow
%u=(1/(x-1).^2)+x;
%v=(x.^2+1)/(x.^2-4);
%w=(((10-x).^(1/3))-1)/((4-x.^2).^(1/2));
%%

N=100;h=1/N;x=0:h:10;
y=sin(x)/x;

subplot(221);
grid
plot(x,y,'m:');



