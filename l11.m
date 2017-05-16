n = 6;
%A = diag(5*ones(1,n))+diag(-ones(1,n-1),-1)+diag(ones(1,n-1),1);
A = diag(3*ones(1,n))+diag(-ones(1,n-1),-1)+diag(-ones(1,n-1),1);
b = [2;ones(n-2,1);2];
%[res, n] = jacobi(A,b,1e-9)
[res, n] = gauss_seidel(A,b,1e-3,1.9 )