function [x2] = newton_raphson(x0)
    syms x;
    syms f(x);
    f(x) = 3*x - cos(x) -1;
    error = subs(f(x),x,x0)
    while(error > 1e-7)
        x0 = x0 - subs(f(x),x,x0)/subs(diff(f(x)),x,x0);
        error = f(x0);
    end
    x2 =x0;
    
end