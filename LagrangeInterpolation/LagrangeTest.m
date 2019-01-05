syms x;
xs = [0 -2 -4 -6 -8 -10];
ys = [29.1 29 28.7 28.2 20.7 19.1];

fx = LagrangeInterpolant(xs,ys);
fx= simplify(fx);
ezplot(fx);
hold;
scatter(xs,ys);
subs(fx,x,-7)