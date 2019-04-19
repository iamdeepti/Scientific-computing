A = [2 2 4; 1 3 2; 3 1 3]
B = [10;17;28]
for k = 1:2
  for i = k+1:3
    f = A(i,k)/A(k,k);
    for j = k:3
      A(i,j) = A(i,j) - f*A(k,j);
    end
    B(i) = B(i) - f*B(k);
  end
end
disp('The values of variable are')
for i=3:-1:1
  f1=0;
  j=i+1;
  while (j<=3)
    f1 = f1 + (S(j)*A(i,j));
    j = j+1;
  end
  S(i) = (B(i)-f1)/A(i,i);
  fprintf('%f\n',S(i));
end

