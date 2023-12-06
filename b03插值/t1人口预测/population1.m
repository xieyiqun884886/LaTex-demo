%% 原始数据
raw = xlsread('人口数');
% 注意这里years是多少年就是多少年，比如2010年，这里的years就是2010；
% 注意人口的单位是万
years = raw(:,1)';
population = raw(:,2)';
years_inter = 2019:2021;% 预测未来三年的

%% 插值
population_pchip =  pchip(years,population,years_inter);  % 三次埃尔米特插值。pop是人口单词的缩写，p是pchip的缩写
population_spline =  spline(years,population,years_inter);   % 三次样条插值。pop_s表示spline的缩写


%% 画图
plot(years,population,'x',  years_inter,population_pchip,'x',  years_inter,population_spline,'x');
legend('原始数据','三次埃尔米特插值预测','三次样条插值','location','southeast');
