M = [[1 1 1 1];[2 3 1 5];[-1 1 -5 3];[3 1 7 -2]];
b = [10;31;-2;18];
M = [M b];
[n,m] = size(M);
for i = 1:n-1
    [v, idx] = max(M(i:end,i));
    idx = idx + i - 1;
    M([i,idx],:) = M([idx,i],:);
    
    for j = i+1:n
        M(j,:) = M(j,:) - M(i,:) * (M(j,i)/v);
    end
end
M

x = zeros(n,1);
x(n) = M(n,m)/M(n,m-1);
for i = n-1:-1:1
    x(i) = (M(i,m)-sum(x(i+1:end)'.*M(i,i+1:end-1)))/M(i,i);
end

x