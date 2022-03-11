function F=center_iczt(f,M,K)

if isrow(f)
    f=f.';
end
MM=(M-1)/2;
W=exp(1i*2*pi/K);
F=czt(f,M,W,W^MM).*W.^((MM:-1:-MM).'.*((size(f,1)-1)/2));
end



%{
曾经坑我的了12个小时的大问题
改成这样：
if isrow(f)
    f=f.';
end

MM=(M-1)/2;
W=exp(1i*2*pi/K);
F=czt(f,M,W,W^MM).*W.^((MM:-1:-MM).'.*((length(f)-1)/2));
end

length([1 2 4 ;3 4 2]) 是3
而size([1 2 4 ;3 4 2]) 是 2 3 
我想要的是2 不是3
这样一来，所有相位都不对了
最坑的是length 返回维度中最大的长度，所以返回的结果有可能是对的，时对时错
%}



