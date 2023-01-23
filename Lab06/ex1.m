% h = [0.25, 0.25,0.25,0.25];
theta = 2*pi;
h = real([1/4*exp(-1j*theta), 1/4*exp(-2j*theta),1/4*1,1/4*exp(-3j*theta)]);
% h = real(1/4*[exp(0.5j*theta)*exp(-1.5j*theta), exp(-0.5j*theta)*exp(-1.5j*theta),exp(1.5j*theta)*exp(-1.5j*theta),exp(-1.5j*theta)*exp(-1.5j*theta)]);
ww = linspace(-pi,pi,2001);

freqresponse = freqz(h,1,ww );

subplot(2,1,1);
plot(ww,abs(freqresponse))
xlabel('Normalized radian frequency')
ylabel('Magnitude')
subplot(2,1,2);
plot(ww,angle(freqresponse))
ylabel('Phase')
xlabel('Normalized radian frequency')