t = linspace(0,2,201);
y = 0;
f_0 = 1;
for k = -9:2:9
   a_k = 4/(pi*k)^2;
   y = y + a_k*exp(1j*2*pi*f_0*k*t);
   %y = y + a_k*2*cos(2*pi*f_0*k*t);
end

plot(t,y);