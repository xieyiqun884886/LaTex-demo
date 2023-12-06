%% 导入数据
xlsread population_raw;
raw=ans; 
x=raw(:,1);
y=raw(:,2);
x_predict=2019:2021;

%% 插值预测
y_p=pchip(x,y,x_predict);
y_s=spline(x,y,x_predict);

%% 画图
plot(x,y,'o',x_predict,y_p,'x',x_predict,y_s,'x');
legend('原始数据','三次埃尔米特插值','三次样条插值','location','southeast');