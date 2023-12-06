%% 准备原始数据和插值数据
x=-pi:pi;
y=sin(x);
x_interpolation=pi:0.1:2*pi;

%% 预测
y_interpolation=sim(net,x_interpolation);

%%  画图
plot(x,y,'o',x_interpolation,y_interpolation,'x');
f=@(x) sin(x);
hold on 
fplot(f,[-pi,2*pi]);
legend('原始数据','net预测数据','三角函数sin','location','southeast');