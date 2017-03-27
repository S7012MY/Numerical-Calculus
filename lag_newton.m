function N = lag_newton(x,fx,z)
    dif = [x' fx' zeros(length(x), length(x)-1)];
    for i = 1:length(x)-1
        dif(1:end-i,i+2) = diff(dif(1:end-i+1,i+1)) ./ (x(i+1:end)-x(1:end-i))';
    end
    prd = [ones(1,length(z)); (z'*ones(1,length(x)-1))' - (x(1:end-1)' * ones(1,length(z)))];
    prd = cumprod(prd);
    N = prd' * dif(1,2:end)';
end