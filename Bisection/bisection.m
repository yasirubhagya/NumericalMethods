function [zero, res, niter] = bisection(f,a,b,tol,nmax)
x = [a (a+b)/2 b]; 
y = f(x); 
niter = 0; 
I = (b-a)/2;
if y(1)*y(3)>0
fprintf('The signs of the function at the extrema must be opposite');
elseif y(1) == 0
zero = a; res = 0; return
elseif y(3) == 0
zero = b; res = 0; return
end
while ( I >= tol && niter <= nmax )
if sign(y(1))*sign(y(2))<0
x(3) = x(2); x(2) = (x(1) + x(3))/2;
y = f(x); I = (x(3)-x(1))/2;
elseif sign(y(2))*sign(y(3))<0
x(1) = x(2); x(2) = (x(1) + x(3))/2;
y = f(x); I = (x(3)-x(1))/2;
else
x(2) = x(find(y ==0)); I = 0;
end
niter = niter+1;
end
if niter > nmax
fprintf('bisection method exited without convergence');
end
zero = x(2); res = f(x(2));