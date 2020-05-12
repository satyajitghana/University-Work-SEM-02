function [polynomial, differences] = newton_divided_differences(x, y)
n = length(y);
% Create the divided differences table
differences = zeros(n, n);
differences(:, 1) = y;
end
