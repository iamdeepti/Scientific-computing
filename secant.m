function[root] = secant(f,x1,x2)
  while(abs(x2-x1)>1e-6)
    x3 = x1 - (x2-x1)*f(x1)/(f(x2)-f(x1));
    x1 = x2;
    x2 = x3;
  end
  root =x3;
  disp(root)
end
