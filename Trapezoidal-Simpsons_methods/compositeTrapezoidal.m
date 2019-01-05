function integral = compositeTrapezoidal(f,lb,ub,n)
  h =(ub-lb)/n;
  v = [lb:h:ub];
  
  sum = f(v(1));
  
  for i = 2:1:n ;
      sum = sum + 2*f(v(i));
  end
  
  sum=sum + f(v(n+1));
integral = (h*sum)/2;
  endfunction