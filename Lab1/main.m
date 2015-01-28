x = 0:0.1:10;
y = arrayfun(@funct,x);
z = zeros(1,101);

disp('Plotting funct(X) against zero for 0<X<10:')

plot(x,y,x,z);

disp('Approximate roots form visual inspection (+-0.01):')
disp('    0.93')
disp('    1.91')
disp('    7.00')
disp('    8.90')

disp('Intervals:')
disp('    0.92 < x < 0.93')
disp('    1.90 < x < 1.91')
disp('    6.99 < x < 7.00')
disp('    8.89 < x < 8.90')


disp('Solutions via Bisection:')
[fx, x, i] = bisection(0.92,0.93,1e-6);
disp(sprintf('    x=%i  f(x)=%i  iterations=%i',x, fx, i))
[fx, x, i] = bisection(1.90,1.91,1e-6);
disp(sprintf('    x=%i  f(x)=%i  iterations=%i',x, fx, i))
[fx, x, i] = bisection(6.99,7.00,1e-6);
disp(sprintf('    x=%i  f(x)=%i  iterations=%i',x, fx, i)) 
[fx, x, i] = bisection(8.89,8.90,1e-6);
disp(sprintf('    x=%i  f(x)=%i  iterations=%i',x, fx, i))


disp('Solutions via Newton-Raphson:')
[fx, x, i] = NewtRaph(0.93,1e-6);
disp(sprintf('    x=%i  f(x)=%i  iterations=%i',x, fx, i))
[fx, x, i] = NewtRaph(1.91,1e-6);
disp(sprintf('    x=%i  f(x)=%i  iterations=%i',x, fx, i))
[fx, x, i] = NewtRaph(7.00,1e-6);
disp(sprintf('    x=%i  f(x)=%i  iterations=%i',x, fx, i)) 
[fx, x, i] = NewtRaph(8.90,1e-6);
disp(sprintf('    x=%i  f(x)=%i  iterations=%i',x, fx, i))