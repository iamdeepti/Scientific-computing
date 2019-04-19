function [x] = simpson(f,a,b,n)
  h = (b-a)/n;
  X = (a:h:b);
  Y = zeros(n+1);
  for i = (1:n+1)
    Y(i) = f(X(i));
  end
  x = Y(1) + Y(n+1) + 4*sum(Y(2:2:n)) + 2*sum(Y(3:2:n));
  x = x * (h/3)
end
