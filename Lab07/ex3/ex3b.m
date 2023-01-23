fs= 1000;
t = 0:1/fs:2;
n = 0:length(t)-1;

x1n= 2*cos(0.4*pi*n+(pi/3));
x2n= 5*cos(0.7*pi*n+(pi/2));
x3n= 5*cos(0.8*pi*n-(pi/4));
xn= x1n + x2n + x3n;

theta1 = 0.4*pi;
theta2 = 7/10 * pi;
theta3 = 1/5 * pi;
theta_nul = 0.4*pi;

H1= [(2*cos(theta1)-2*cos(theta_nul)).*exp(-1j*theta1),(2*cos(theta2)-2*cos(theta_nul)).*exp(-1j*theta2),(2*cos(theta3)-2*cos(theta_nul)).*exp(-1j*theta3)];
x1nH1= x1n * H1(1);
x2nH1= x2n * H1(2);
x3nH1= x3n * H1(3);

%filter with frequency response
% vn= real(x1nH1 + x2nH1 + x3nH1);

%filter with impuls response
h1 = [1,-2*cos(0.4*pi),1];
vn= conv(xn,h1);
Theta_C = 0.7*pi;

sound(vn,fs)
pause(2.1)
%normal sound
sound(xn,fs);
pause(3);
