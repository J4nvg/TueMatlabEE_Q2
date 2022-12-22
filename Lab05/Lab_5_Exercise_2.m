% load('lab5data.mat');
%% n-domains
n = 0:99 ; % n domain input signal
% n1 = ;% n domain 2-point avg output signal
% n2 = ;% n domain 2-point avg output signal


%% Define Transfer Functions
h1 = [1/2, 1/2]; % 2-point avg
h2 = [1/5, 1/5,1/5, 1/5,1/5]; % 5-point avg

%% Output signal
y1 = conv(x1,h1); % 2-point avg
y2 = conv(x1,h2); % 5-point avg

%% Plot Section
subplot(3,1,1);
plot(n, x1);

subplot(3,1,2);
plot(n, x1);
hold on;
plot((0:length(y1)-1), y1);

subplot(3,1,3);
plot(n, x1);
hold on;
plot((0:length(y2)-1), y2);
xlim([0 103]);