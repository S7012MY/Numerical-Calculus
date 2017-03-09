% II 
p = [2,-5,0,8];
polyval(p,2);

p2 = [1,-5,-17,21];
roots(p2);

% III
% Ex 1
x = 0:1e-5:1;
y = exp(10*x.*(x-1)).*sin(12*pi*x);
%plot(x,y);

a = -20; b = -2/3;
t = 0:1e-5:10*pi;
x = (a+b)*cos(t)-b*cos((a/b+1)*t);
y = (a+b)*sin(t)-b*sin((a/b+1)*t);
%plot(x,y);

% Ex 2
x = 0:1e-5:2*pi;
f1 = cos(x);
f2 = sin(x);
f3 = cos(2*x);
%plot(x,f1,x,f2,'--',x,f3,'-*');

% Ex 3
x = 0:1:50;
y = x/2.*(mod(x,2)==0)+(3*x+1).*(mod(x,2)==1);
%plot(x,y,'*');

% Ex 4
% plot(fft(eye(17)));
% plot(fft(eye(17))), axis equal, axis square;
% plot(fft(eye(17))), axis equal, axis off;

% Ex 6
X = -2:1e-1/2:2;
Y = -4:1e-1:4;
[x, y] = meshgrid(X, Y);
g = exp(-((x-1/2).^2+(y-1/2).^2));
srf = surf(x,y,g);
set(srf,'FaceColor',[1 0 0],'FaceAlpha',0.5);