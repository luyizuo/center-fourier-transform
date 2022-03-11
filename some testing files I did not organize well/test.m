
%{
F=center_czt(f,M,K)
f,M-1 同时变大
M-1，K 同时变化
都不影响结果
K>M
K>length(f)  % 这个约束我都快忘了
下面举例
%}


plot(abs(center_czt(ones(5000,1),500,624*1)))
plot(abs(center_czt(ones(5000,1),500*1.5,624*1.5)))
plot(abs(center_czt(ones(5000,1),5000,6240)))
% 其中就最后一个是对的
%% K > M 这个好验证 结果就是以K为周期的

%%  探讨 K > length(f) 条件

f = [ones(500,1) ; zeros(500,1) ; ones(500,1)];
dx = 1;

% 真实图像这样
F = center_czt(f,100000,200000)*dx;
plot(abs(F))

% 让 Nfx 和K 一起下降

F = center_czt(f,10000,20000)*dx;
plot(abs(F))

F = center_czt(f,1000,2000)*dx;
plot(abs(F))

F = center_czt(f,750,1500)*dx;
plot(abs(F))
% 目前还算不上失真 但接下去就不对了

F = center_czt(f,500,1000)*dx;
plot(abs(F)) % 就严重不对


% 所以是的，输入也是以K 为周期的


%% 但是输入是K 周期 是不是视为无限填充0呢
F = center_czt(f,10000,10000);
plot(abs(F))

f = ones(100,1);
fx=-99/2:99/2;
F = center_czt(f,100,100);
scatter(fx,abs(F),'.')

hold on
F = center_czt(f,100,120);
ffx=fx/1.2;
scatter(ffx,abs(F),'.')

F = center_czt(f,100,130);
ffx=fx/1.3;
scatter(ffx,abs(F),'.')

F = center_czt(f,100,140);
ffx=fx/1.4;
scatter(ffx,abs(F),'.')

F = center_czt(f,100,150);
ffx=fx/1.5;
scatter(ffx,abs(F),'.')

F = center_czt(f,100,160);
ffx=fx/1.6;
scatter(ffx,abs(F),'.')

F = center_czt(f,100,170);
ffx=fx/1.7;
scatter(ffx,abs(F),'.')

F = center_czt(f,100,180);
ffx=fx/1.8;
scatter(ffx,abs(F),'.')

F = center_czt(f,100,190);
ffx=fx/1.9;
scatter(ffx,abs(F),'.')

F = center_czt(f,100,200);
ffx=fx/2;
scatter(ffx,abs(F),'.')


% 他们都是落在一条曲线上的
% 所以输入是K 周期 外边被视为无限填充0




