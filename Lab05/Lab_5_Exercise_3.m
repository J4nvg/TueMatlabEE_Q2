%% Variable Declaration
q = -0.9;
r = 0.9;
M = 22;

%% Signal Processing
xn = 256*(rem(0:100,50)<10);
wn = xn + q * [0,xn(1:end-1)];
yn = conv(wn,r.^(0:M));
xn_padded = [xn, zeros(1, length(yn)-length(xn))];

%% Domain Declaration
tx = 0:length(xn)-1;
tx2 = 0:length(xn_padded)-1;
tw = 0:length(wn)-1;
ty = 0:length(yn)-1;

%% Maximum Error Calculation
ErrorMax = max(abs(xn - yn(1:length(xn)))),

%% Plots
subplot(2,1,1);
plot(tx,xn);
hold on;
plot(tw,wn);
ylim([-400,400]),
xlim([0, 75+1]);

subplot(2,1,2);
plot(tx2,xn_padded);
hold on;
plot(ty,yn);
xlim([0, 75+1]);
ylim([-100,300]);