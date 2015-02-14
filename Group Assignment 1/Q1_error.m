%Q1: Use zero- through third-order series expansions to predict f(3). Compute the true
%percent relative error ?t for each approximation.
clear, clc
format long %see more decimals
%zeroth order
n = 0
x = 3
z = 25*x^3 - 6*x^2 + 7*x - 88;
%t3 = taylor(z,'Order', 3)
error0 = (abs(z - z)/z*100)

%1st order

n = 0 : 1;
syms x
d = [z diff(z)];
seq = d .* x.^n ./(factorial(n));
approx = sum(seq);
x = 3;
result = eval(approx);
error1 = (abs(z - result)/z*100);

%2nd order


n = 0 : 2;
syms x
z = 25*x^3 - 6*x^2 + 7*x - 88;
d = [z diff(z) diff(z,2)];
seq = d .* x.^n ./(factorial(n)); 
approx = sum(seq); 
x = 3;
result = eval(approx);
z = eval(z);
error2 = (abs(z - result)/z*100);

%3rd order

n = 0 : 3;
syms x
z = 25*x^3 - 6*x^2 + 7*x - 88;
d = [z diff(z) diff(z,2) diff(z,3)]
seq = d .* x.^n ./(factorial(n)) 
approx = sum(seq) 
x = 3
result = eval(approx)

%Compute true percent relative error for each approximation
z = eval(z);
error0
error1
error2
error3 = (abs(z - result)/z*100)
%error is large, expected it to be much smaller.

