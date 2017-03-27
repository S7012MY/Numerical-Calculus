% 1)
points = [10];
dist = hermite([0 3 5 8 13], [0 225 383 623 993], [75 77 80 74 72], points);
spd = dist ./ points;

% 2)

x = linspace(-5,5,15);
y = sin(2*x);
dy = 2*cos(2*x);
points = linspace(-5,5,1000);
ap = hermite(x,y,dy,points);

%plot(points,sin(2*points)); hold on;
%plot(points,ap);

% 3)
x = [8.3 8.6];
f = [17.56492 18.50515];
df = [3.116256 3.151762];
ap = hermite(x, f, df, [8.4]);
abs(ap-8.4*log(8.4));

% 4)
fu = @(x) 3.*x.*exp(x)-exp(2.*x);
dfu = @(x) exp(x).*(3.*x-2.*exp(x)+3);
x = [1 1.05];
fx = fu(x);
dfx = dfu(x);
err = abs(hermite(x,fx,dfx,[1.03])-fu([1.03]));