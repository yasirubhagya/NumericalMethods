tolerance=1e-12;
L=0;
U=5;
maxiteration=1000;


[sol,res,niter] = bisection(@f,L,U,tolerance,maxiteration);

printf("sol = %f res = %f niter= %d",sol,res,niter);