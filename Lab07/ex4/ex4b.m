theta = linspace(-pi,pi,501);
index= find(theta > 0.82*pi,1,"first");
L= 1;
Theta_C = 0.7*pi;
Lmin= 0;
while L<= 100
    
    n = linspace(0,L-1,L);
    h2 = 2/L * cos(Theta_C*n);
    HH_0 = freqz(h2,1,theta);
    if abs(HH_0(index)) < 0.1
        Lmin= L;
        break;
    end
    L = L+1;
end
Lmin

n_end = linspace(0,Lmin-1,Lmin);
h2_end = (2/Lmin)* cos(Theta_C*n);
HH_end = abs(freqz(h2_end,1,theta));


%Aditionally
[~,posMax] = max(HH_end);
RightHH_end=find(HH_end(posMax:end)< (1/ sqrt(2)),1,'first'); %right
LeftHH_end=find(HH_end(posMax:-1:1)< (1/ sqrt(2)),1,'first'); %Left
 RightHH_end = posMax-1 + RightHH_end;
 LeftHH_end = posMax+1 - LeftHH_end;
Wpb_Lmin = theta(RightHH_end) - theta(LeftHH_end)
%%%

plot(theta,HH_end);

xlim([-pi,pi]);
ylabel('|H(e^(j\theta)|')
xlabel('\theta')
legendcontent = sprintf('L= %i',Lmin);
% legend(legendcontent);
xline(theta(RightHH_end),'r')
xline(theta(LeftHH_end),'r')
yline(1/sqrt(2),'g')
