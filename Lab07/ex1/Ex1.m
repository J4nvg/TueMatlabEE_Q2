fs= 2500;
Ts = 1/fs;
t = 0:Ts:2;
x1 = 2*cos(2*pi*160*t+(pi/3));
x2 = 5*cos(2*pi*350*t+(pi/2));
x3 = 5*cos(2*pi*600*t+(pi/4));
xt = x1 + x2 + x3;


sound(x1,fs),
pause(2.1),
sound(x2,fs)
pause(2.1),
sound(x3,fs),
pause(2.1),
sound(xt,fs),
