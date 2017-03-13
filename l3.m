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
plot(points,py,x,fx)