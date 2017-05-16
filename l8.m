% 3)
% a)
a = 1; b = 1.5;
x = (a+b)/2;
fx = @(x) exp(-x.^2);
(b-a)*fx([(a+b)/2]);

% b)

n = 150;
start = a+(b-a)/(2*n);
x = start:(b-a)/n:b;
sum((b-a)/n * fx(x));

% 1)
a = 0; b = 1; h = b-a;
fx = @(x) 2./(1+x.^2);
Q0 = h/2*(fx([a]) + fx([b]));
Q1 = Q0;
first = true;
k = 1;
S0 = h/6 * (fx([a])+4*fx([a+h/2])+fx([b])); S1 = 0;
while abs(S1-S0) > 1e-5 || first
    Q0 = Q1;
    Q1 = 1/2 * Q0 +h/2^k * sum(fx(a+h/2^k:h/2^(k-1):b-h/2^k));
    if(k > 1)
        S0 = S1;
        S1 = 1/3*(4*Q1-Q0);
    end
    
    first = false;
    k = k+1;
end
% S1