function [ fx, xr, iter ] = ReflectedStanding( funct, x0, x1, err )
%REFLECTEDSTANDING Summary of this function goes here
%   Detailed explanation goes here

    iter = 0;
	xm2 = x0;
	xm1 = x1;
	ea = Inf;
	
	while (ea >= err)
	    iter = iter + 1;
		fxm1 = funct(xm1);
		fxm2 = funct(xm2);
		
		x = xm1 - fxm1 * ( ( xm1 - xm2 ) / ( xfm1 - fxm2 ) );
		ea = abs((xm1-xm2)/xm1);
		
		disp(sprintf('Iteration %i: x=%i f(x)=%i', iter, x, funct(x)))
		
		xm2 = xm1;
		xm1 = x;
		
    end
	
	xr = x;

end

