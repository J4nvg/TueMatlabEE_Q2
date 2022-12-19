function [] = Lab_4_Exercise_2c(Amplitude0, Frequency0, Phase0, SamplingFrequency0, SamplingFrequency1)
Theta0 = 2*pi*(Frequency0/SamplingFrequency0);
while Theta0 > pi
    Theta0= Theta0 - 2*pi;
end
if Theta0 < 0
    Theta0 = abs(Theta0);
     Phase0 = Phase0 * -1;
end
Phase1 = Phase0;
t = linspace(0,0.05,1001);
Frequency1 = (Theta0 / (2*pi)) * SamplingFrequency1;
y = Amplitude0*cos(2*pi*Frequency1*t+Phase1);
plot(t,y);
end