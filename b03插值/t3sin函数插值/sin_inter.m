%% 1.׼��ԭʼ���ݺͲ�ֵ����
x=-pi:pi;
y=sin(x);
x_interpolation=pi:0.1:2*pi;

%% 2.��ֵ
y_pchip=pchip(x,y,x_interpolation);   % ���ΰ������ز�ֵ
y_spline=spline(x,y,x_interpolation);   % ����������ֵ

%% 3.��ͼ
% (1)ԭʼ���ݵ㡢���������Ĳ�ֵ��
plot(x,y,'o',  x_interpolation,y_pchip,'x',  x_interpolation,y_spline,'x');
hold on 

% (2)sin����ͼ��
y=@(x) sin(x);
fplot(y,[-pi,2*pi])

% (3)ͼ��
legend('ԭʼ����','���ΰ������ز�ֵ','����������ֵ','���Ǻ���sin','location','southeast');
xlabel('x');
ylabel('y');
title('��ֵ');
grid on;