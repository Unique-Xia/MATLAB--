%说明：基于投针法的蒙特卡洛模拟估计PI值程序
%作者：Unique-Xia
%日期：2020-10-16

clear;
close;
clc;
cla;

%绘制投针区域
axis([0,3,0,3]);
x = [1,2;1,2];
y = [0,0;3,3];
line(x,y);                  

%初始化参数
N = 1000;
a = 1;
L=0.5;
count = 0;

%蒙特卡洛模拟过程
for i=1:N
    theta = pi * rand;      
    x1 = rand + 1;
    y1 = rand * 3;
    x2 = x1 + L * cos(theta);
    y2 = y1 + L * sin(theta);
    if(abs(fix(x1)-fix(x2))==1)
        count = count + 1;
    end
    p = count / N;
    mypi = (2 * L) / (p * a);
    line([x1,x2],[y1,y2]);
    hold on;
    title(sprintf('蒙特卡洛方法估算PI的值为：%f',mypi),'fontsize',12);
    pause(0.0001);
end
