
% 确定 center_czt 输出的振幅*dx后不是相对值，是有绝对大小的，不会随M改变

N=201;
dx=0.02;
x = -(N-1)/2*dx:dx:(N-1)/2*dx;

M=301;
dX=0.1;
X = -(M-1)/2*dX:dX:(M-1)/2*dX;

K=1/dx/dX;

f=sin(2*pi*x).*exp(-3*x.^2);
% plot(abs(f))

F=center_czt(f,M,K)*dx;
plot(abs(F))

%{
更改M，F的大小不会改变

%}



