function [Frequency1, Phase1] = Lab_4_Exercise_2b (SamplingFrequency0, SamplingFrequency1)
frequency0 = 175;
phase0 = pi / 3;
Theta0 = 2*pi*(frequency0/SamplingFrequency0);
while Theta0 > pi
    Theta0= Theta0 - 2*pi;
end
if Theta0 < 0
    Theta0 = abs(Theta0);
     phase0 = phase0 * -1;
end
Phase1 = phase0;
t = linspace(0,0.1,1001);
Frequency1 = (Theta0 / (2*pi)) * SamplingFrequency1;
y = cos(2*pi*Frequency1*t+Phase1);
plot(t,y);