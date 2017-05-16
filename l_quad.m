function q = quad(fx,n)
    beta = @(k) (4-k.^(-2)).^(-1);
    bvect = beta(linspace(1,n-1,n-1));
    j = gallery('tridia g',bvect,zeros(1,n),bvect);
    e = eigs(j);
    A = 2*e.*e
    q = sum(A.*fx(e));
end