theta = linspace(-pi,pi,501);
theta_nul = 0.4*pi;
H = exp(-1j*theta).*(2*cos(theta)-2*cos(theta_nul));

subplot(2,1,1);
plot(theta, abs(H));
title('Magnitude Response FIR1');
hold on;
xline(0.4*pi,'r');
xline(-0.4*pi,'r');
xlabel('Theta');
ylabel('Magnitude');

subplot(2,1,2);
plot(theta, angle(H));
title('Phase Response FIR1');
xlabel('Theta');
ylabel('Phase (radians)');