function [] = Lab_5_Exercise_1( Amplitude, Decay, Length, Offset )
    A = Amplitude;  a = Decay; L = Length; O = Offset;
    % Define the time span
    n = -10:20;
    % Define the step function u[n]
    u = (n - O >= 0);
    % Define the step function u[n - L]
    u_shift = (n - L - O >= 0);
    % Define the decaying block function
    x = A * (u - u_shift) .* a.^(n - O);
    % Create a stem plot
    stem(n, x)
    % Label the axes
    xlabel('n')
    ylabel('y[n]')
end