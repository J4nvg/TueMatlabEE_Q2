x = linspace(0,10,101);


y =sin(x)./x;
subplot(221),plot(x,y,'m:');
xlabel('x');
ylabel('y(x)');
grid;

u=(1./((x-1).^2))+x;

subplot(222),plot(x,u,'b--');
xlabel('x');
ylabel('u(x)');
ylim([0 150]);

v=((x.^2)+1)./((x.^2)-4);

subplot(223),plot(x,v,'r-.');
xlabel('x');
ylabel('v(x)');
ylim([-20 20]);

w=((10-x).^(1/3)-1)./(4-x.^2).^(1/2);

subplot(224),plot(x,w,'g-');
ylim([0 2]);
ylabel('w(x)');
xlabel('x');
grid;