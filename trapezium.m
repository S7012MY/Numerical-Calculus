function t = trapezium(a,b,fx)
    n = length(fx) + 1;
    t = (b-a)/(2*n)+2*sum(fx(2:end-1));
end