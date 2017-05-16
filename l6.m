% 1)
time = linspace(1,7,7);
temp = [13 15 20 14 15 13 10];
m = length(time);

a = m*sum(time.*temp)-sum(time)*sum(temp);
num = m*sum(time.*time)-sum(time)^2;
a = a/num;

b = sum(time.*time)*sum(temp)-sum(time.*temp)*sum(time);
num = m*sum(time.*time)-sum(time)^2;
b = b/num;

% 2)
x = [0 10 20 30 40 60 80 100];
y = [0.0061 0.0123 0.0234 0.0424 0.0738 0.1992 0.4736 1.0133];
p2 = polyfit(x,y,2); p3 = polyfit(x,y,3);
polyval(p2,45);
polyval(p3,45);
%plot(x,y,'o'); hold on
xl = linspace(0,100,100);
yl = polyval(p2,xl);
yl2 = polyval(p3,xl);
%plot(xl,yl); hold on
%plot(xl,yl2);

% 5)