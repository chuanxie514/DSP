% 定义序列范围和参数
n = -10:10;
a = -0.2;
b = 0.4;

% 计算复指数序列
X = exp(a + 1j*b).*n;

% 绘制幅度子图
subplot(2, 2, 1);
stem(n, abs(X));
title('幅度');
xlabel('n');
ylabel('|X(n)|');

% 绘制相位子图
subplot(2, 2, 2);
stem(n, angle(X),"g");
title('相位');
xlabel('n');
ylabel('arg(X(n))');

% 绘制实部子图
subplot(2, 2, 3);
stem(n, real(X),"black");
title('实部');
xlabel('n');
ylabel('Re(X(n))');

% 绘制虚部子图
subplot(2, 2, 4);
stem(n, imag(X),'p');
title('虚部');
xlabel('n');
ylabel('Im(X(n))');

% 调整子图间距
sgtitle('复指数序列');
