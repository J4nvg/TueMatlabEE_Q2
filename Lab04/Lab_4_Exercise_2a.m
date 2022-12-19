function [ Theta0 ] = Lab_4_Exercise_2a( Frequency0, SamplingFrequency0 )
Theta0 = 2*pi*(Frequency0/SamplingFrequency0);

while Theta0 > pi
    Theta0= Theta0 - 2*pi;
end
Theta0 = abs(Theta0);
end
