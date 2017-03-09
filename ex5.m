function y = ex5(step)
    if(step == 5)
        y = 1/2;
    else
        y=1/(1+ex5(step+1));
    end
end