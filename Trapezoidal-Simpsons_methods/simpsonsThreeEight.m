function integral = simpsonsThreeEight(f,lb,ub,n)
  h =(ub-lb)/n;
  v = [lb:h:ub];
  
  sum = f(v(1));
  
  for i = 2:2:n-1 ;    
       sum = sum + 3*f(v(i));
  end
  
  for k = 3:2:n ;
       sum = sum + 3*f(v(k));
  end
  
  
  for j = 4:2:n-2 ;
      sum = sum + 2*f(v(j));
  end
  
  sum=sum + f(v(n+1));
  integral = (3*h/8)*sum;
  endfunction