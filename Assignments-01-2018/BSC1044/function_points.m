function [x, y] = function_points(func, N, init, final)
x = linspace(init, final, N);
y = func(x);
end
