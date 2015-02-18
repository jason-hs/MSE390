function [ fx, xr, iter ] = bisection( funct, xL, xU, err )
%BISECTION Summary of this function goes here
%   Detailed explanation goes here
	
	ea = Inf;
	xold = Inf;
	iter = 0;
	
	while (ea >= err)
	    iter = iter + 1;
        xr = (xL + xU) / 2;
		fx = funct(xr);
		
		ea = abs((xr-xold)/xr);
		if (fx * funct(xL) < 0)
		    xU = xr;
		end
	    if (fx * funct(xL) > 0)
		    xL = xr;
		end
		
		disp(sprintf('Iteration %i: theta=%i y=%i error=%i', iter, xr, funct(xr), ea))
		
		xold = xr;
	end

	
end

