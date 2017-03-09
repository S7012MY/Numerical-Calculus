function y = difTable(x, fun)
    y = [x', fun(x)'];
    lcol = 2;
    for j = 1:size(x,2)-1
        dif = [];
        for i = 1:size(x,2)-j
            dif = [dif; y(i+1,lcol)-y(i,lcol)];
        end
        lcol = lcol + 1
        dif = [dif; zeros(j,1)];
        y = [y, dif];
    end
end