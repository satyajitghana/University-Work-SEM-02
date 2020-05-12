function [ pol, D ] = NFD( x, y )
% Inputs : Data (xi, yi) i = 1,2,3,4 . . .n
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

n = length(y);
D = zeros(n,n);
D(:,1) = y;

for j=2:n
    for i=j:n
        D(i,j) = D(i,j-1) - D(i-1,j-1);
    end
end

delta = diag(D);

syms t pol pro;
h = x(2)-x(1);
s = (t-x(1))/h;

pol = delta(1);

for i = 2:n
    pro = 1;
    for j = 1 : i-1
        %%pro = ( pro * delta(i) ) / factorial(i-1);
        pro = pro * (s-j+1);
    end
    pol = pol + (pro * delta(i)) / factorial(i-1);
end
pol = simplify(pol);
end

