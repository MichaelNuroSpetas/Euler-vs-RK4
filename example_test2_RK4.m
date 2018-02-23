%% Eulers Method: Example 
% x(0)=-1, y(0)=2, h=0.1, t0=0
tic
for j = 1:1000
clearvars
h=0.001;
x = zeros(1,500);
t = zeros(1,500);
x(1)=-1;

for i = 1:500
    t(i+1)=t(i)+h;
    x(i+1)=x(i)+funcdx(x(i), t(i))*h;
end 
end
toc
figure(1)
plot(t, x)
title('Eulers');
fprintf('Eulers:')
%% 4th order Runge-Kutta: Example
tic
for j = 1:1000
clearvars
h=0.001;
x = zeros(1,500);
t = zeros(1,500);
x(1)=-1;
for i = 1:500
    k1=funcdx(x(i), t(i));
    k2=funcdx(x(i) + h/2*k1, t(i) + h/2);
    k3=funcdx(x(i) + h/2*k2, t(i) + h/2);
    k4=funcdx(x(i) + h*k3, t(i) + h);
    avgslope=1/6*(k1+2*k2+2*k3+k4);
    x(i+1)=x(i)+avgslope*h;
    t(i+1)=t(i)+h;
end
end
toc
figure(1)
plot(t, x)
title('Eulers');
fprintf('Eulers:')