% 定义序列 x(n) 和 h(n)
clc;
clear;
n_x = 0:4;
x = [1, 2, 3, 4, 5];
n_h = 0:3;
h = [1, -2, 1, 3];

% 计算卷积结果 y(n)
y = conv(x, h);

% 绘制 x(n) 子图
subplot(3, 1, 1);
stem(n_x, x, 'filled');
title('x(n)');
xlabel('n');
ylabel('x(n)');

% 绘制 h(n) 子图
subplot(3, 1, 2);
stem(n_h, h, 'filled');
title('h(n)');
xlabel('n');
ylabel('h(n)');

% 绘制 y(n) 子图
n_y = 0:length(y)-1;
subplot(3, 1, 3);
stem(n_y, y, 'filled');
title('y(n)');
xlabel('n');
ylabel('y(n)');

% 调整子图间距
sgtitle('卷积');
