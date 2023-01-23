ww=-pi:(pi/500):pi;
HH = freqz(1/4*ones(1,4),1,ww);
magnitude = abs(HH);
nulling_array = find(magnitude < (1*10^(-6)) );
nulling = ww(nulling_array)