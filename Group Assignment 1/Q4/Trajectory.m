function [ y ] = Trajectory( theta0, g, v0, x, y0 )
%TRAJECTORY Summary of this function goes here
%   Detailed explanation goes here

    y = tan( theta0 ) * x - g / ( 2 * ( v0 ^ 2 ) * ( cos( theta0 ) ^ 2 ) ) * ( x ^ 2 ) + y0;

end

