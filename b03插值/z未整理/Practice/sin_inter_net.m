%% ׼��ԭʼ���ݺͲ�ֵ����
x=-pi:pi;
y=sin(x);
x_interpolation=pi:0.1:2*pi;

%% Ԥ��
y_interpolation=sim(net,x_interpolation);

%%  ��ͼ
plot(x,y,'o',x_interpolation,y_interpolation,'x');
f=@(x) sin(x);
hold on 
fplot(f,[-pi,2*pi]);
legend('ԭʼ����','netԤ������','���Ǻ���sin','location','southeast');