
tolerance=1e-8;
X0=10;
maxiteration=1000;


[sol,res,niter] = newtons(@f,@df,tolerance,X0,maxiteration);

printf("sol = %f res = %f niter= %d",sol,res,niter);