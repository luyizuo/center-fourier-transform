
% compare "fft" and "czt" 

%% grid setting
clc;clear;
N=201;
dx=0.02;
x = -(N-1)/2*dx:dx:(N-1)/2*dx;

extent_X = 40;
M=201;
dX=extent_X/(M-1);
X = -(M-1)/2*dX:dX:(M-1)/2*dX;

K=1/dx/dX;
%% input
f=ones(length(x),1);
plot(f)
% 另一个函数
% f=sin(2*pi*x).';
%% compare 1
F1=fftshift(fft(fftshift(f)));
F3=fftshift(fft(fftshift(padarray(f,[10000,0],0))));
plot(X,abs(F1))
plot(abs(F3))
F2=center_czt(f,M,K);
plot(X,abs(F2))
%% czt 的单独比较

F2=center_czt(f,M,K);
scatter(X,abs(F2),'.')

hold on 
M=1001;
dX=extent_X/(M-1);
X = -(M-1)/2*dX:dX:(M-1)/2*dX;
K=1/dx/dX;
F2=center_czt(f,M,K);
plot(X,abs(F2))


