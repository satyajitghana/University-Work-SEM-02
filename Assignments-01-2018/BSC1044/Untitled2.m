syms x y
fp = fimplicit((x^2+y^2-1)^3 == x^2*y^3, [-10 10]);
n=1:1:100;
nImages = length(n);

filename = 'test2.gif';
%{
for i=15:-1:1
    
    fp = fimplicit((i^2*x^2+i^2*y^2-i*1)^3 == i^2*i^3*x^2*y^3, [-2 2], 'r','LineWidth',2);
    drawnow
    
    frame = getframe(1);
    im{i} = frame2im(frame);
    [A, map] = rgb2ind(im{i}, 256);
    if i == 15
        imwrite(A, map, filename, 'gif', 'LoopCount', Inf, 'DelayTime', 0.1);
    else
        imwrite(A, map, filename, 'gif', 'WriteMode', 'append', 'DelayTime', 0.1);
    end
    
end
for i=1:1:15
    
    fp = fimplicit((i^2*x^2+i^2*y^2-i*1)^3 == i^2*i^3*x^2*y^3, [-2 2], 'r', 'LineWidth',2);
    drawnow
    
    frame = getframe(1);
    im{i} = frame2im(frame);
    [A, map] = rgb2ind(im{i}, 256);
    %if i == 1
    %    imwrite(A, map, filename, 'gif', 'LoopCount', Inf, 'DelayTime', 0.1);
    %else
        imwrite(A, map, filename, 'gif', 'WriteMode', 'append', 'DelayTime', 0.1);
    %end
    
end
%}
for i=1:-0.05:0.1
    
    fp = fimplicit((i^2*x^2+i^2*y^2-i*1)^3 == i^2*i^3*x^2*y^3, [-10 10], 'r','LineWidth',2);
    drawnow
    
    %frame = getframe(1);
    %im{i} = frame2im(frame);
    %[A, map] = rgb2ind(im{i}, 256);
    %if i == 15
    %    imwrite(A, map, filename, 'gif', 'LoopCount', Inf, 'DelayTime', 0.1);
    %else
    %    imwrite(A, map, filename, 'gif', 'WriteMode', 'append', 'DelayTime', 0.1);
    %end
    
end
