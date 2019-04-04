function[y] = regula_falsi(x1,x2,f)
  x = (f(x2)*x1 - x2*f(x1)) / (f(x2)-f(x1));
  error = 1e-5;
  while(abs(f(x)) > error)
    if f(x2)*f(x) <0
      x1 = x;
    else
      x2 = x;
    end
    x = (f(x2)*x1 - f(x1)*x2)/(f(x2) - f(x1))
  end
  y = x
end
