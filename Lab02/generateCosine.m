function [xx,tt] = generateCosine(frequency, duration)
tt = 0:1/(100*frequency):duration;
xx = cos(2*pi*frequency*tt);
end
