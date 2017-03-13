function y = lag_u(point, x, fx)
    [lin, col] = meshgrid(x,x);
    u = col - lin;
    A = ones(length(x),1);
    for i = 1:length(x)
        u(i,i) = 1;
        A(i) = 1/prod(u(i,:));
    end
    nr = sum((A' .* fx)./(point * ones(1,length(x)) - x));
    num = sum((A')./(point * ones(1,length(x)) - x));
    y = nr/num;
end