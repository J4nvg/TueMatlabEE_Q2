t = linspace(0,0.1,1001);
f_1 = 490;
f_2 = 500;
f_3 = 510;
f_x = 10;
x = cos(2*pi*f_2*t) .* (5 + 3*cos(2*pi*f_x*t - (pi/3)));
c = cos(2*pi*f_2*t);
m = 5 + 3*cos(2*pi*f_x*t - (pi/3)); %%Also include DC
subplot(311),plot(t,x);
ylim([-10 10]);
subplot(312),plot(t,c);
ylim([-10 10]);
subplot(313),plot(t,m);
ylim([-10 10]);