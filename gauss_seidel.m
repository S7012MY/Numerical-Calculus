function [x, N] = Gauss_Seidel(A, b, err,om) 
    n = length(A);
    x = ones(n,1);
    xnew = zeros(n,1);
    N = 0;
    p = randperm(n);
    %p = 1:n;
    while(norm(x-xnew) > err)
        x = xnew;
        N = N + 1;
        for ci = 1:n
            i = p(ci);
            xnew(i) = b(i)/A(i,i);
            for cj = 1:ci-1
                j=p(cj);
                xnew(i) = xnew(i) - A(i,j)/A(i,i)*xnew(j);
            end
            for cj = ci+1:n
                j=p(cj);
                xnew(i) = xnew(i) - A(i,j)/A(i,i)*x(j);
            end
        end
        xnew = (1-om)*x+om*xnew;
    end
    x = xnew;
end