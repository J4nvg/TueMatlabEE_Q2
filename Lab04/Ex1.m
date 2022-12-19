%% Time domains
t1 = linspace(0,0.4,201);
t2 = linspace(0,0.4,1001);
tn = linspace(0,0.4,9);

%% (sampled) Signals
x1 = 2*cos(2*pi*5*t1+(pi/3));
x2 = 2*cos(2*pi*25*t2+(pi/3));
xn1 = [2*cos(2*pi*5*0+(pi/3)),2*cos(2*pi*5*0.05+(pi/3)),2*cos(2*pi*5*0.1+(pi/3)),2*cos(2*pi*5*0.15+(pi/3)),2*cos(2*pi*5*0.2+(pi/3)),2*cos(2*pi*5*0.25+(pi/3)),2*cos(2*pi*5*0.3+(pi/3)),2*cos(2*pi*5*0.35+(pi/3)),2*cos(2*pi*5*0.4+(pi/3))];
xn2 = [2*cos(2*pi*25*0+(pi/3)),2*cos(2*pi*25*0.05+(pi/3)),2*cos(2*pi*25*0.1+(pi/3)),2*cos(2*pi*25*0.15+(pi/3)),2*cos(2*pi*25*0.2+(pi/3)),2*cos(2*pi*25*0.25+(pi/3)),2*cos(2*pi*25*0.3+(pi/3)),2*cos(2*pi*25*0.35+(pi/3)),2*cos(2*pi*25*0.4+(pi/3))];

%% Plots (NOTE: Use the stem(X, Y) function!)
subplot(2,1,1),
plot(t1,x1),
hold on
stem(tn,xn1);
subplot(2,1,2),
plot(t2,x2),
hold on
stem(tn,xn2);