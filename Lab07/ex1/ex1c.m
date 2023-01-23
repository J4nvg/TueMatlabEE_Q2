fs= 1000;
t = 0:1/fs:2;
n = 0:length(t)-1;
x1n= 2*cos(0.4*pi*n+(pi/3));
x2n= 5*cos(0.7*pi*n+(pi/2));
x3n= 5*cos(0.8*pi*n-(pi/4));
xn= x1n + x2n + x3n;


% sound(x1n,fs),
% pause(2.1),
% sound(x2n,fs)
% pause(2.1),
% sound(x3n,fs),
% pause(2.1),
sound(xn,fs),