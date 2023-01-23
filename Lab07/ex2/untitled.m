% Define the nulling frequency
theta_nul = 0.4*pi;

% Create a vector of 501 equally distributed values of theta in the FI
theta = linspace(-pi, pi, 501);

% Evaluate H(e^jtheta) using the given equation
H = exp(-1i*theta) .* (2*cos(theta) - 2*cos(theta_nul));

% Plot the magnitude and phase response of the nulling filter FIR1
subplot(2,1,1);
plot(theta, abs(H));
title('Magnitude Response of FIR1');
xlabel('Theta');
ylabel('Magnitude');

subplot(2,1,2);
plot(theta, angle(H));
title('Phase Response of FIR1');
xlabel('Theta');
ylabel('Phase (radians)');
