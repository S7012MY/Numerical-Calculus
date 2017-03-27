function y = hermite(x,f,df,points)
    m = length(x);
    col2 = repelem(df, 2);
    col2(2:2:2*m-2) = diff(f) ./ diff(x);
    m = 2*m;
    col2(m) = 0;
    d = [repelem(f,2)', col2'];
    x = repelem(x,2);
    for i = 3:m
        d = [d, zeros(m,1)];
        d(1:m-i+1,i) = diff(d(1:m-i+2,i-1)) ./ (x(i:end) - x(1:m-i+1))';
    end
    z = points;
    prd = [ones(1,length(z)); (z'*ones(1,length(x)-1))' - (x(1:end-1)' * ones(1,length(z)))];
    prd = cumprod(prd);
    y = prd' * d(1,1:end)';
end