%% ԭʼ����
raw = xlsread('�˿���');
% ע������years�Ƕ�������Ƕ����꣬����2010�꣬�����years����2010��
% ע���˿ڵĵ�λ����
years = raw(:,1)';
population = raw(:,2)';
years_inter = 2019:2021;% Ԥ��δ�������

%% ��ֵ
population_pchip =  pchip(years,population,years_inter);  % ���ΰ������ز�ֵ��pop���˿ڵ��ʵ���д��p��pchip����д
population_spline =  spline(years,population,years_inter);   % ����������ֵ��pop_s��ʾspline����д


%% ��ͼ
plot(years,population,'x',  years_inter,population_pchip,'x',  years_inter,population_spline,'x');
legend('ԭʼ����','���ΰ������ز�ֵԤ��','����������ֵ','location','southeast');
