% ex 1
x = linspace(1,5,5);
fx = [22 23 25 30 28];

%plot(lag_newton(x,fx,linspace(1,5,30)));

% ex 2
x = linspace(0, 6, 13);
y = exp(sin(x));
% plot(lag_newton(x,y,linspace(0,6,30)));

% ex 3

aitken(linspace(1,5,5).*linspace(1,5,5), linspace(1,5,5),115)