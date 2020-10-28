%说明：蒙特卡洛模拟——打点估算 PI
%作者：夏震
%日期：2020-10-16

clear;
clc;
cla;
axis([0,4,0,4]);    
rectangle('Position',[1,1,2,2]);
axis equal;                                         %绘制正方形
hold on;

rectangle('Position',[1,1,2,2],'Curvature',[1,1]);  %以（2,2）为圆心，r=1作圆，绘制正方形内切圆
hold on;

x = 2;          %圆心坐标x
y = 2;          %圆心坐标y
a = 2;          %正方形边长
r = a / 2;      %圆半径
N = 2000;       %打点次数
n = 0;          %点在圆心内部次数计数

for i=1:N
    px = rand * 2 + 1;  %随机打点，范围 1-3
    py = rand * 2 + 1;  %随机打点，范围 1-3
    if((px-x)^2 + (py-y)^2 <= r^2)
        n = n + 1;
    end
    p = n/N;
    MYPI = p * a^2 / r^2;
    plot(px,py,'.r');
    hold on;
    title(sprintf('蒙特卡洛方法估算PI的值为：%f',MYPI),'fontsize',12);
    pause(0.0001);
end