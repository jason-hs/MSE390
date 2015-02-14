%Q1: Use zero- through third-order series expansions to predict f(3). Compute the true
%percent relative error ?t for each approximation.
clear, clc
format long %see more decimals

%define our function
f = @(x) 25*x^3 - 6*x^2 + 7*x - 88;

%define the n'th taylor term of the function x and the distance xa = x-a
taylor_series = @(f,n,xa) = diff(f,n) * (xa^n) / (factorial(n)) ;

%calculate the actual value
actual_val = f(3);

disp('Actual f(3) = %i', actual_val)
disp('Calculating Taylor series approximations')

for n = 0:3
    taylor_approx = sum(taylor_series(f,0:n,3));
    error = (abs(actual_val - taylor_approx)/z*100)
	disp('Degree %i approximation = %i; error = %i%%')
	
end

