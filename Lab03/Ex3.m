%% Fourier coefficients
k=-10;
a_10 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k= -9;
a_9 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = -8;
a_8 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = -7;
a_7 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = -6;
a_6 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = -5;
a_5 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = -4;
a_4 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = -3;
a_3 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = -2;
a_2 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = -1;
a_1 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = 0;
a0 = -1/4;
k = k + 1;
a1 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = k + 1;
a2 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = k + 1;
a3 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = k + 1;
a4 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = k + 1;
a5 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = k + 1;
a6 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = k + 1;
a7 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = k + 1;
a8 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = k + 1;
a9 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);
k = k + 1;
a10 = (1/(1j*2*pi*k))*(-3*(-1)^(k)+3*(-1j)^k);

%% Function variables
t = linspace(0,1,101);
y0 = a0*exp(1j*2*pi*t*0);
y4 = a_2*exp(1j*2*pi*t*-2) + a_1*exp(1j*2*pi*t*-1) + a0*exp(1j*2*pi*t*0) +a1*exp(1j*2*pi*t*1) +a2*exp(1j*2*pi*2*t);
y10 = a_5*exp(1j*2*pi*t*-5) +a_4*exp(1j*2*pi*t*-4) +a_3*exp(1j*2*pi*t*-3) +a_2*exp(1j*2*pi*t*-2) + a_1*exp(1j*2*pi*t*-1) + a0*exp(1j*2*pi*t*0) +a1*exp(1j*2*pi*t*1) +a2*exp(1j*2*pi*2*t)+a3*exp(1j*2*pi*3*t)+a4*exp(1j*2*pi*4*t)+a5*exp(1j*2*pi*5*t);
y20 = a_10*exp(1j*2*pi*t*-10) +a_9*exp(1j*2*pi*t*-9) +a_8*exp(1j*2*pi*t*-8) +a_7*exp(1j*2*pi*t*-7) + a_6*exp(1j*2*pi*t*-6) + a_5*exp(1j*2*pi*t*-5) +a_4*exp(1j*2*pi*t*-4) +a_3*exp(1j*2*pi*t*-3) +a_2*exp(1j*2*pi*t*-2) + a_1*exp(1j*2*pi*t*-1) + a0*exp(1j*2*pi*t*0) +a1*exp(1j*2*pi*t*1) +a2*exp(1j*2*pi*2*t)+a3*exp(1j*2*pi*3*t)+a4*exp(1j*2*pi*4*t)+a5*exp(1j*2*pi*5*t)+a6*exp(1j*2*pi*6*t)+a7*exp(1j*2*pi*7*t)+a8*exp(1j*2*pi*8*t)+a9*exp(1j*2*pi*9*t)+a10*exp(1j*2*pi*10*t);

subplot(411),plot(t,y0)
subplot(412),plot(t,y4)
subplot(413),plot(t,y10)
subplot(414),plot(t,y20)