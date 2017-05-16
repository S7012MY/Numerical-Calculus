function [x, N] = Jacobi(A, b, err) 
    n = length(A);
    x = ones(n,1);
    xnew = zeros(n,1);
    N = 0;
    while(norm(x-xnew) > err)
        x = xnew;
        N = N + 1;
        for i = 1:n
            xnew(i) = b(i)/A(i,i);
            for j = 1:n
                if j ~= i
                    xnew(i) = xnew(i) - A(i,j)/A(i,i)*x(j);
                end
            end
        end
    end
    x = xnew;
end