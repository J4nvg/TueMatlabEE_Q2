theta = linspace(-pi,pi,501);
L1 = 10;
L2 = 20;
L3 = 40;
n1 = linspace(0,L1-1,L1);
n2 = linspace(0,L2-1,L2);
n3 = linspace(0,L3-1,L3);

Theta_C = 0.7*pi;
h2n1 = 2/L1 * cos(Theta_C*n1);
h2n2 = 2/L2 * cos(Theta_C*n2);
h2n3 = 2/L3 * cos(Theta_C*n3);


HH_10 = abs(freqz(h2n1,1,theta));
HH_20 = abs(freqz(h2n2,1,theta));
HH_40 = abs(freqz(h2n3,1,theta));


[~,posMax] = max(HH_10);
RightHH_10=find(HH_10(posMax:end)< (1/ sqrt(2)),1,'first'); %right
LeftHH_10=find(HH_10(posMax:-1:1)< (1/ sqrt(2)),1,'first'); %Left
 RightHH_10 = posMax-1 + RightHH_10;
 LeftHH_10 = posMax+1 - LeftHH_10;
Wpb_L10 = theta(RightHH_10) - theta(LeftHH_10)

[~,posMax] = max(HH_20);
RightHH_20=find(HH_20(posMax:end)< (1/ sqrt(2)),1,'first'); %right
LeftHH_20=find(HH_20(posMax:-1:1)< (1/ sqrt(2)),1,'first'); %Left
 RightHH_20 = posMax-1 + RightHH_20;
 LeftHH_20 = posMax+1 - LeftHH_20;
Wpb_L20 = theta(RightHH_20) - theta(LeftHH_20)

[~,posMax] = max(HH_40);
RightHH_40=find(HH_40(posMax:end)< (1/ sqrt(2)),1,'first'); %right
LeftHH_40=find(HH_40(posMax:-1:1)< (1/ sqrt(2)),1,'first'); %Left
 RightHH_40 = posMax-1 + RightHH_40;
 LeftHH_40 = posMax+1 - LeftHH_40;
Wpb_L40 = theta(RightHH_40) - theta(LeftHH_40)

plot(theta,HH_10,'b');
hold on;
plot(theta,HH_20,'r');
hold on;
plot(theta,HH_40,'g');
legend('L=10','L=20','L=40');
xlim([-pi,pi]);
ylabel('|H(e^(j\theta)|')
xlabel('\theta')
