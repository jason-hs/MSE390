% Use a centered difference approximation to estimate the second derivative of f(x).
% Perform the evaluation at x = 2 using a step size of h =0.25
clear, clc

%f''(x) = (f(x+h) - 2f(x) + f(x-h))/h^2
x = 2;
h = 0.25;
a = x+h;
b = x-h;
z = 25*x^3 - 6*x^2 + 7*x - 88;  % z = f(x)
za = 25*a^3 - 6*a^2 + 7*a - 88;
zb = 25*b^3 - 6*b^2 + 7*b - 88;
z_2 = (z*a - 2*z +z*b)/h^2      % second derivative of f(x)

