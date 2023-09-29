%定义序列 X(n)：


n = 0:7;
X = exp(-1j * 0.3 * pi * n);
%使用fft函数计算DTFT：

matlab
Xf = fft(X);
%计算频率轴 f：

matlab
Fs = 1;
f = (0:length(Xf)-1) * (Fs / length(Xf));
%绘制幅度和相位图：

matlab
figure;

% 幅度图
subplot(2, 1, 1);
stem(f, abs(Xf), 'filled');
title('DTFT幅度');
xlabel('f');
ylabel('|X(f)|');

% 相位图
subplot(2, 1, 2);
stem(f, angle(Xf), 'filled');
title('DTFT相位');
xlabel('f');
ylabel('\angle X(f)');