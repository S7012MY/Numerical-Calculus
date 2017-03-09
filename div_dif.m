function y = div_dif(x,f)
    y = [x',f'];
    lcol = 2;
    for j = 1:size(x,2)-1
        dif = [];
        for i = 1:size(x,2)-j
            dif = [dif; (y(i+1,lcol)-y(i,lcol))/(x(i+j)-x(i))];
        end
        lcol = lcol + 1
        dif = [dif; zeros(j,1)];
        y = [y, dif];
    end
end