x = [0 3 6 9 12 15];
y = [0 58 122 196 216 370];
syms poly(t)
[poly, differences] = newton_forward_interpolation(x, y);
poly
dpoly = diff(poly,t,1);
%fplot(dpoly,[0 15]);
%z = y./x;
%z(1)=0;
%[poly2, differences2] = newton_forward_interpolation(x, z);
%g = matlabFunction(dpoly);
%gdiff = matlabFunction(diff(dpoly,t,1));
%newton_raphson_improved(g, gdiff, 10 ,2);
t = 6.4135;
eval(dpoly)