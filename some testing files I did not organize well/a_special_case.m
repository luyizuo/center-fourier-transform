
% what happens when K=1
% 主要是算xz平面的时候有需要K=1
%% grid setting and input
clc;clear;
N=201;
dx=0.02;
x = -(N-1)/2*dx:dx:(N-1)/2*dx;

extent_X = 40;
M=5001;
dX=extent_X/(M-1);
X = -(M-1)/2*dX:dX:(M-1)/2*dX;

K=1/dx/dX;

f=ones(length(x),1);
%%
F=fftshift(fft(fftshift(f)))*dx;
plot(abs(F)) % maximun 4.02
%%
F2=center_czt(f,M,K)*dx;
plot(X,abs(F2)) % maximun 4.02
%%
K=1;
F2=center_czt(f,1,1)*dx; % maximun 4.02

%% summary: all the methods are the same

%% 比较速度
tic
for ii=1:1e3
    F=sum(f)*dx;
end
toc

tic
for ii=1:1e3
    F=center_czt(f,1,1)*dx;
end
toc
%历时 0.000455 秒。
%历时 0.095341 秒。

% summary: "sum" is fast a lot 
