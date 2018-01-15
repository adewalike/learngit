% Hold On 法
% 此种方法只能点，或者分段划线
hold off
t=0;
m=0;
t1=[0 0.1]; %要构成序列
m1=[sin(t1);cos(t1)];
p = plot(t,m,'*',t1,m1(1,:),'-r',t1,m1(2,:),'-b','MarkerSize',5);
x=-1.5*pi;
axis([x x+2*pi -1.5 1.5]);
grid on;
for i=1:100
    hold on
    t=0.1*i; %下一个点
    m=t-floor(t);
    t1=t1+0.1; %下一段线(组)
    m1=[sin(t1);cos(t1)];
    p = plot(t,m,'*',t1,m1(1,:),'-r',t1,m1(2,:),'-b','MarkerSize',5);
    x=x+0.1;
    axis([x x+2*pi -1.5 1.5]);
    pause(0.01);
end
%%just test git tools
%%have fun with git