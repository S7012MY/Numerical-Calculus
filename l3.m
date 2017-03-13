% Ex 1
x = [1930, 1940, 1950, 1960, 1970, 1980];
fx = [123203, 131669, 150697, 179323, 203212, 226505];

%lag_u(1955,x,fx)
%lag_u(1995,x,fx)

% Ex 2
x = [100,121,144];
fx = [10, 11, 12];
%lag_u(115,x,fx)

% Ex 3
tx = linspace(0, 10, 21);
tfx = (1 + cos(tx * pi)) ./ (1 + tx);

x = linspace(0, 10, 100);
fx = (1 + cos(x * pi)) ./ (1 + x);

num_points = 100;
points = linspace(0, 10, num_points);
py = ones(1,num_points);
for i = 1:num_points
    py(1, i) = lag_u(points(i),tx,tfx);
end
%plot(points,py,x,fx)

% Facultative
% Ex 2
% a)
train_points = 100;
x = linspace(-5,5,train_points);
fx = 1./(1+x.*x);

num_points = 14;
tx = linspace(-5,5,num_points);
tfx = 1./(1+tx.*tx);
ty = ones(1,num_points);
for i = 1:train_points
    ty(1,i) = lag_u(x(i),tx,tfx);
end
%plot(x,fx,x,ty); hold on;

% b and c
n = 105;
i = linspace(1, n, n);
% b)
% xi = cos((2*i-1)*pi/(2*n));
% c)
xi = cos(i*pi/n);
a = -5; b = 5;

xi = 0.5*((b-a)*xi + a + b);
% test if we generate random the points
% xi = unifrnd(-5,5,1,n);
% xi = sort(xi);
fx = 1./(1+xi.*xi);

num_plot = 100;
xplot = linspace(-5,5,num_plot);
ty = ones(1,num_plot);
for j = 1:num_plot
    ty(1,j) = lag_u(xplot(j),xi,fx);
end
plot(xplot,ty)




