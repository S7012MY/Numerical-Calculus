% Ex 1
x = linspace(0,1,1e6);
la(1,:) = x;
la(2,:) = 3/2*x.^2-1/2;
la(3,:) = 5/2*x.^3-3/2*x;
la(4,:) = 35/8*x.^4-15/4*x.^2+3/8;
%for i=1:4
%    subplot(2,2,i);
%    plot(x,la(i,:));
%end

% Ex 2
% a)
t = -1:1e-5:1;
taylor = @(x) cos(x * acos(t));
% plot(t,taylor(1),t,taylor(2),t,taylor(3));
% b)

%for i = 1:6
%    r = [];
%    t = -1:1e-3:1;
%    plot(t,recTaylor(i,t));
%    hold on;
%end
 
% Ex 3
% cu for
x = -1:1e-1:3;
x0 = 0;
k_fct = 1;
dif = ones(1,length(x));
prez = 0;
for i = 1:6
    k_fct = k_fct * i;
    dif = dif .* (x - x0);
    rez = dif/k_fct .* exp(x) + prez;
    %plot(x, rez);
    %hold on;
    prez = rez;
end

% Ex 4
h = 0.25; a = 1;
dif_table(a+h.*[0:4], @(x) sqrt(x.*x+x))

% Ex 5
x = [2, 4, 6, 8];
f = [4, 8, 14, 16];
%div_dif(x,f)