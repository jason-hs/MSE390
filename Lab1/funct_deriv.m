function [ Y ] = funct_deriv( X )
%FUNCT_DERIV Summary of this function goes here
%   Detailed explanation goes here
	Y = 1/(2*sqrt(X)) - exp(X/5) * cos(X);

end

