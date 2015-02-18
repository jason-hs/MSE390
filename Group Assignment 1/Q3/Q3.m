

to_solve = @(x) ReflectedStanding(0.4, x, 16, 12, 48);

[fx, xr, iter] = Secant(to_solve, 0, 10, 0.0001);

disp('DONE')