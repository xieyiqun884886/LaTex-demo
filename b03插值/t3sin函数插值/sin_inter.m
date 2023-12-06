%% 1.准备原始数据和插值数据
x=-pi:pi;
y=sin(x);
x_interpolation=pi:0.1:2*pi;

%% 2.插值
y_pchip=pchip(x,y,x_interpolation);   % 三次埃尔米特插值
y_spline=spline(x,y,x_interpolation);   % 三次样条插值

%% 3.画图
% (1)原始数据点、两个方法的插值点
plot(x,y,'o',  x_interpolation,y_pchip,'x',  x_interpolation,y_spline,'x');
hold on 

% (2)sin函数图像
y=@(x) sin(x);
fplot(y,[-pi,2*pi])

% (3)图例
legend('原始数据','三次埃尔米特插值','三次样条插值','三角函数sin','location','southeast');
xlabel('x');
ylabel('y');
title('插值');
grid on;