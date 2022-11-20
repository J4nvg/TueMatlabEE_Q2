function [t, x] = CreateCosine(Amplitude, AngularFrequency, Phase, Duration)
l = ((AngularFrequency / (2*pi))*Duration) * 32 + 1;
t = linspace(0,Duration,l);
x = Amplitude*cos(AngularFrequency* t+Phase);
plot(t,x)
end