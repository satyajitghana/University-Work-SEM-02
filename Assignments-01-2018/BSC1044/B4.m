x = [1995 1996 1999 2003 2005 2009];
y = [3300 1000 1200 220 85 720];
%LIP(x, y);
xq = 1995:0.1:2009;
vq = interpn(x, y, xq, 'cubic');
figure
plot(x,y,'o',xq,vq,'-','LineWidth',2);
legend('Samples','Interpolation');