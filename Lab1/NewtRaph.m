function [ fx, xr, iter ] = NewtRaph( x0, err )
%NEWTRAPH Summary of this function goes here
%   Detailed explanation goes here

    iter = 0;
	xold = x0;
	xr = x0;
	ea = Inf;
	
	while (ea >= err)
	    iter = iter + 1;
		fx = funct(xr);
		dfx = funct_deriv(xr);
		
		xr = xr - fx/dfx;
		
		ea = abs((xr-xold)/xr);
		
		xold = xr;
		
    end

end

