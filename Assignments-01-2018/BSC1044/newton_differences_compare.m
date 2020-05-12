function [] = newton_differences_compare(x, y)
% A Function to compare the polynomial approximation done using 
% Newton-Gregory forward differences and backward differences

disp('The Given Data Points');
disp(x);
disp(y);

disp('Newton-Gregory Forward Interpolation');
[poly1, diff1] = newton_forward_interpolation(x, y);
disp('Differences');
disp(diff1);
disp('Polynomial')
disp(poly1);
hold on;
disp('Newton-Gregory Backward Interpolation');
[poly2, diff2] = newton_backward_interpolation(x, y);
disp('Differences');
disp(diff2);
disp('Polynomial');
disp(poly2);

%hold off;
%t = x(1):0.01:x(end);
%z1 = eval(diff1);
%z2 = eval(diff2);
%plot(t,z1,'r',t,z2,'b');

end
