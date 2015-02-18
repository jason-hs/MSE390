

to_solve = @(theta) Trajectory( theta, 9.81, 20, 35, 2);

[fx, xr, iter] = bisection(to_solve, 0, pi/2, 0.0001);

disp('DONE')