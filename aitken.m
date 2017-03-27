function y = aitken(x,f,z)
    y = zeoros(length(x));
    for i = 1:length(x)
        y(i,1) = f(i);
        for j = 2:i
            y(i,j) = 1/(x(i)-x(j-1)) * det(y(j-1,j-1) x(j-1)-z;y(i,j-1) x(i)-z);
        end
    end
end