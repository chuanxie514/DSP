% 设置参数
mu = [0 0];                  % 均值（Mean）
sigma = [1 0; 0 1];          % 协方差矩阵（Covariance Matrix）

% 生成网格数据
x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);
[X, Y] = meshgrid(x, y);

% 计算高斯分布概率密度函数（PDF）
pdf = mvnpdf([X(:) Y(:)], mu, sigma);
pdf = reshape(pdf, size(X));

% 绘制三维图形
figure;
surf(X, Y, pdf);
title('3D Gaussian Distribution');
xlabel('X');
ylabel('Y');
zlabel('Probability Density');

% 添加等高线图
figure;
contour(X, Y, pdf);
title('Contour Plot of Gaussian Distribution');
xlabel('X');
ylabel('Y');