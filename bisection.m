function [x] = bisection(f,a,b)
  if f(a)*f(b) > 0
    disp('Root does not exist between a and b');
  else
    x = (a+b)/2;
    error = abs(f(x));
    while error > 1e-7
      if f(a)*f(x) < 0
        b = x;
      else
        a = x;
      end
      x = (a+b)/2;
      error = abs(f(x));
    end
  end
  