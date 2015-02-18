function [ h ] = ReflectedStanding( h0, x, lambda, t, v )
%REFLECTEDSTANDING Summary of this function goes here
%   Detailed explanation goes here

    h = h0 * ( sin( 2 * pi * x / lambda ) * cos( 2 * pi * t * v / lambda ) + exp( -1 * x ) );

end

