%% ��������
xlsread population_raw;
raw=ans; 
x=raw(:,1);
y=raw(:,2);
x_predict=2019:2021;

%% ��ֵԤ��
y_p=pchip(x,y,x_predict);
y_s=spline(x,y,x_predict);

%% ��ͼ
plot(x,y,'o',x_predict,y_p,'x',x_predict,y_s,'x');
legend('ԭʼ����','���ΰ������ز�ֵ','����������ֵ','location','southeast');