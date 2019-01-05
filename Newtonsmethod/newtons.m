function [sol,res,niter] = newtons(f,df,t,x0,nmax)
  niter=0;
  x= x0 - (f(x0)/df(x0));
  ekprev = abs(x-2*(sqrt(2)-1));
  while abs(x0-x) >= t && niter <= nmax
    x0=x;
    x= x0 - (f(x0)/df(x0));
    ek =abs(x-2*(sqrt(2)-1));
    
    printf("k=%d xk=%f ek=%f ek/e2K-1 = %f \n",niter,x,ek,ek/(ekprev^2));
    ekprev = ek;
    niter=niter+1;
  end
   if niter > nmax
     printf("Newtons Method stopprd without convergence");
   else
     sol=x;
     res=f(x);
   end
endfunction
