%˵�������ؿ���ģ�⡪�������� PI
%���ߣ�����
%���ڣ�2020-10-16

clear;
clc;
cla;
axis([0,4,0,4]);    
rectangle('Position',[1,1,2,2]);
axis equal;                                         %����������
hold on;

rectangle('Position',[1,1,2,2],'Curvature',[1,1]);  %�ԣ�2,2��ΪԲ�ģ�r=1��Բ����������������Բ
hold on;

x = 2;          %Բ������x
y = 2;          %Բ������y
a = 2;          %�����α߳�
r = a / 2;      %Բ�뾶
N = 2000;       %������
n = 0;          %����Բ���ڲ���������

for i=1:N
    px = rand * 2 + 1;  %�����㣬��Χ 1-3
    py = rand * 2 + 1;  %�����㣬��Χ 1-3
    if((px-x)^2 + (py-y)^2 <= r^2)
        n = n + 1;
    end
    p = n/N;
    MYPI = p * a^2 / r^2;
    plot(px,py,'.r');
    hold on;
    title(sprintf('���ؿ��巽������PI��ֵΪ��%f',MYPI),'fontsize',12);
    pause(0.0001);
end