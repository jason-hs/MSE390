function [ h ] = ReflectedStanding( h0, x, theta, t, v )
%REFLECTEDSTANDING Summary of this function goes here
%   Detailed explanation goes here

    h = h0 * ( sin( 2 * pi * x / theta ) * cos( 2 * pi * t * v / theta ) + exp( -1 * x ) );

end

