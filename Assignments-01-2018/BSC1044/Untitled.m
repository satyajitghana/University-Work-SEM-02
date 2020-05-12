syms t
fp = fplot3(sin(t), cos(t), cos(2*t), 'r.-');
n=1:1:100;
nImages = length(n);

filename = 'test.gif';
for i=1:1:100
    fp.XFunction = sin(t*i-t);
    fp.ZFunction = cos(t*i);
    %fp.YFunction = cos(t*i+t);
    drawnow
    frame = getframe(1);
    im{i} = frame2im(frame);
    [A, map] = rgb2ind(im{i}, 256);
    if i == 1
        imwrite(A, map, filename, 'gif', 'LoopCount', Inf, 'DelayTime', 0.1);
    else
        imwrite(A, map, filename, 'gif', 'WriteMode', 'append', 'DelayTime', 0.1);
    end
end