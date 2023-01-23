fs= 1000;
Ts = 1/fs;
t = 0:0.0001:0.01;

%Pseudo Continious timedomain
x1 = 2*cos(2*pi*200*t+(pi/3));
x2 = 5*cos(2*pi*350*t+(pi/2));
x3 = 5*cos(2*pi*600*t+(pi/4));
xt = x1 + x2 + x3;

%Discrete timedomain
n = 0:10;
x1n= 2*cos(0.4*pi*n+(pi/3));
x2n= 5*cos(0.7*pi*n+(pi/2));
x3n= 5*cos(0.8*pi*n-(pi/4));
xn= x1n + x2n + x3n;
plot(t,xt);

xlabel('[n \cdot Ts]')
ylabel('Amplitude')
hold on,
stem(n*Ts,xn);

legend('Continious signal','Discrete signal')
