% myczt 和myczt2 两种不同的实现方法的比较
%%
N=50;
M=100;
K=500;

dx=0.5*pi/N;
x=-N*dx:dx:N*dx;
dX=1/dx/K;
X=-M*dX:dX:M*dX;

xx=sin(2*pi*x).*exp(-3*x.^2);

%%  测试正确性

XX=centerczt(xx,M,K);
YY=myczt(xx,2*M+1,K);
plot(abs(YY.'-XX));

%% 测试速度
tic
for a=1:10^4
XX=centerczt(xx,M,K);
end
t1=toc;

tic
for a=1:10^4
YY=myczt2(xx,2*M+1,K);
end
t2=toc;
fprintf('%d,%d \n',t1,t2)


% 卷积法:myczt2比直接调用czt的方法:myczt要慢些



