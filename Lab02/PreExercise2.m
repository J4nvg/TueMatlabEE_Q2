%% Vectorization %%
% M = 200;
% for k = 1:M
%   x(k) = k;
%   y(k) = cos( 0.001 * pi * x(k)*x(k));
%end
%plot(x,y)
%
%% Same result: %%
M = 200;
y = cos( 0.001 *pi * (1:M).*(1:M));
plot(1:M,y)
%% Functions %%
function [xx,tt] = generateCosine(frequency, duration)
tt = 0:1/(100*frequency):duration;
xx = cos(2*pi*frequency*tt);
end
%The word function must be in the first line as first word
%The file name must be equal to the function name
%the file extension must be a lower case m

%%XX Default inputs XX%%
%U can use the nargin operator to determine the number of passed arguments.
% In example: duration is optional bc of nargin;
%function [x,t] = generateCosine(frequency, duration)
%if nargin < 2
%duration = 3;
%end
%...
%end
