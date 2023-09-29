% 定义信号和滤波器
n = 0:25;
x = (0.8).^n;
h = (-0.9).^n .* (n >= 0);

% 使用 conv 函数计算卷积
y1 = conv(x, h);

% 使用 filter 函数计算卷积
y2 = filter(h, 1, x);

% 绘制 y1 和 y2 单独的图
figure;
% 绘制 y1 图形
subplot(3, 1, 1);
stem(0:length(y1)-1, y1, '^', 'MarkerFaceColor', 'r', 'MarkerSize', 8);
xlabel('n');
ylabel('Amplitude');
title('Convolution Result Using conv() Function');
grid on;

% 绘制 y2 图形
subplot(3, 1, 2);
stem(0:length(y2)-1, y2, 'o', 'MarkerFaceColor', 'b', 'MarkerSize', 8);
xlabel('n');
ylabel('Amplitude');
title('Convolution Result Using filter() Function');
grid on;

% 绘制卷积结果在同一幅图中
subplot(3, 1, 3);
stem(0:length(y1)-1, y1, '^', 'MarkerFaceColor', 'b', 'MarkerSize', 8);
hold on;
stem(0:length(y2)-1, y2, 'o', 'MarkerFaceColor', 'r', 'MarkerSize', 8);
xlabel('n');
ylabel('Amplitude');
title('Convolution Results');
legend('Using conv() function', 'Using filter() function');
grid on;
