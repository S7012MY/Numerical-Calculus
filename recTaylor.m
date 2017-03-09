function y = recTaylor(ord, vect)
    if(ord==0)
        y = ones(1,size(vect,2));
    else if(ord==1)
        y = vect;
    else
        y = 2 * vect .* recTaylor(ord-1, vect) - recTaylor(ord-2,vect);
    end
end
