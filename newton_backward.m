function [] = newton_backward(X,Y,n,x)
  h = X(2) - X(1);
  p = (x - X(n))/h;
  diff = zeros(n,n);
  diff(1,:) = Y;
  for i = 2:n
    for j = i:n
      diff(i,j) = diff(i-1,j) -diff(i-1,j-1);
    end
  end
  y = 0.0
  for i = 1:n
    temp = 1.0;
    for j = 1:i-1
      temp = temp*(p+j-1);
    end
    y = y+((diff(i,n)*temp)/factorial(i-1));
  end
  y
end
