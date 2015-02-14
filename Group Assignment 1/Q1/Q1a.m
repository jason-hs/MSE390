%Q1: Use zero- through third-order series expansions to predict f(3). Compute the true
%percent relative error ?t for each approximation.
clear, clc
format long %see more decimals

%defien out function
syms x;
f = @(x) 25*x^3 - 6*x^2 + 7*x - 88; 



%our constants
eval_at = 3;
base_point = 1;
max_degree = 3;

%definition of our taylor series
taylorify = @(n) subs( diff(sym(f),n), base_point ) * ( eval_at-base_point )^n / factorial(n) ;

%compute the actual value
actual_val = f(eval_at);
disp(sprintf('Actual value of f(%i) = %i', eval_at, actual_val));

for i = 0 : max_degree
	n = 0 : i;

	seq = arrayfun(taylorify,n); %break down into a length n taylor series
	result = sum(seq); %sum the elements of the taylor series
	
	error = (abs(actual_val - result)/actual_val); %produce the error
	
	disp('   ')
	disp(sprintf('----Taylor approximation of degree %i----', i));
	disp(sprintf('----        (base point = %i)        ----', base_point));
	disp(sprintf('f(%i) = %i ; error = %i', eval_at, result, error));
end


