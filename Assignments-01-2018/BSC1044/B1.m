Q1 = @(x) (4210/21)*(10^6) - (3685/21)*(10^6)*exp(-21*x/(5*(10^3)));
Q2 = @(x) 1.068798997*10^(-5)*(5720-6*x)^(21/6)
fplot(Q1, [0, 120], 'LineWidth', 2);
hold on;
fplot(Q2, [120,953.34], 'LineWidth', 2);
grid on;
xlabel('Time in hours $\rightarrow$', 'Interpreter', 'latex');
ylabel('Amount of Pollutants in kg $\rightarrow$', 'Interpreter', 'latex');
title('Pollutants in Bellandur Lake $ $', 'Interpreter', 'latex');
%legend(func2str(Q1), func2str(Q2));
legend({'0 $\leq$ t $\leq$ 120','120 $\leq$ t $\leq$ 953.34'},'Interpreter', 'latex');
