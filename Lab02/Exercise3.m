t = linspace(0,2,201);
ylabel('y(t)');
xlabel('t');
y=1*exp(1j*(2*pi.*t));
plot(t,real(y),'b-')
hold on
plot(t,imag(y),'r-')