x =linspace(0,3,301); % Domain
y = exp(1j*(2*pi*1.*x+0)); % Reference Signal
y1 =exp(1j*(2*pi*1.*x+0));% Reflected Signal, phase 0
y2 =exp(1j*(2*pi*1.*x+(pi/2)));% Reflected Signal, phase π/2
y3 =exp(1j*(2*pi*1.*x+(pi)));% Reflected Signal, phase π 
y4 =exp(1j*(2*pi*1.*x+(3*pi/2)));% Reflected Signal, phase 3π/2
%%%%%%%%  ↓Plots↓   %%%%%%%%
subplot(4,1,1),
plot(x,real(y1),'c-'),
hold on
plot(x,y+y1,'r-'),
grid;

subplot(4,1,2),
plot(x,real(y),'b-'),
hold on
plot(x,real(y2),'c-'),
plot(x,y+y2,'r-'),
grid;

subplot(4,1,3),
plot(x,real(y),'b-'),
hold on
plot(x,real(y3),'c-'),
plot(x,y+y3,'r-'),
grid;

subplot(4,1,4),
plot(x,real(y),'b-'),
hold on
plot(x,real(y4),'c-'),
plot(x,y+y4,'r-'),
grid;
%% Per subplot: 1. reference, 2. reflected, 3. addition%%
%% In this order!!! %%%%