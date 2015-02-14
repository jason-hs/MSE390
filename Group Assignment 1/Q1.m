%Q1: Use zero- through third-order series expansions to predict f(3). Compute the true
%percent relative error ?t for each approximation.
clear, clc
format long %see more decimals
n = 0 : 3;
syms x
z = 25*x^3 - 6*x^2 + 7*x - 88
d = [z diff(z) diff(z,2) diff(z,3)]
seq = d .* x.^n ./(factorial(n)) 
x = 3
approx = sum(seq) 
