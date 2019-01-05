function integral = simpsonsOneThird(f,lb,ub,n)
  h =(ub-lb)/n;
  v = [lb:h:ub];
  
  sum = f(v(1));
  
  for i = 2:2:n ;
      sum = sum + 4*f(v(i));
  end
  
  for j = 3:2:n-1 ;
      sum = sum + 2*f(v(j));
  end
  
  sum=sum + f(v(n+1));
  integral = (h/3)*sum;
  endfunction