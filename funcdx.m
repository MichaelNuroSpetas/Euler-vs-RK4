function [z] = funcdx(x,t)
z=tan(sin(x)) - sin(tan(x)) - cos(x)*pi;
end