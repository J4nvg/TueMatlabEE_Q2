n = linspace(0,149,150);
n_y = linspace(0,151,152);
x2 = 5*cos(0.13*pi*n);
x1 = x2 + 22*cos(0.44*pi*n-pi/3);
theta = 0.44*pi;
b1 = -2*cos(0.44*pi);
filterco =[1,-0.3748,1] ;
yn = conv(filterco,x1);

subplot(3,1,1),
plot(n,x1);
xlim([0,149]);

subplot(3,1,2),
plot(n,x2);
xlim([0,149]);

subplot(3,1,3),
plot(n_y,yn);
xlim([0,151]);