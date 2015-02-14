% Use a centered difference approximation to estimate the second derivative of f(x).
% Perform the evaluation at x = 2 using a step size of h =0.25
clear, clc

f = @(x) 25*x^3 - 6*x^2 + 7*x - 88; 

%f''(x) = (f(x+h) - 2f(x) + f(x-h))/h^2
x = 2;
h = 0.25;
a = x+h;
b = x-h;
z = f(x);  % z = f(x)
za = f(a);
zb = f(b);
z_2 = (z*a - 2*z +z*b)/h^2;      % second derivative of f(x)

disp(sprintf('----Centered difference with x=%i ; h=%i----', x,h));
disp(sprintf('df(%i) = %i', x, z_2));