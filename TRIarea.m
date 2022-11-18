function [A,s] = TRIarea(a,b,c)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Compute area of a triangle
%sides have length a,b & c
%inputs:
%a,b,c:lengths of sides
%output
%A: area of triangle
% Usage:
%Area = TRIarea(a,b,c);
% For both A and s:
%[Area,hlen] = TRIarea(a,b,c);
%%%%%%%%%%%%%%%%%%%%%%%
if (a+b > c)
    if(b+c >a)
        if(a+c>b)
            s = (a+b+c)/2;
            A = sqrt(s*(s-a)*(s-b)*(s-c));
        else
            A=0;
        end 
    else
        A = 0;
    end
else 
    A = 0;
end
%%%%%%%%%%%%end of function%%%
end
