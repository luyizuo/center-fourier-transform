function F=center_czt(f,M,K)
% =========================================================================
%{
task:
    realize center fourier transform from N points to M points (regardless of their odevity)
some explain:
    1. it's like：F(X)=integral(f(x)*exp(-j*2*pi*X*x),-Inf,Inf) but you need to
    multiply an 'dx' in the final result to absolutely fit the analogue.
    while the inverse transform：F(X)=integral(f(x)*exp(-j*2*pi*X*x),-Inf,Inf)is
    needed, run it and get the result upside down.
    2. the function operates along the first array dimension with size greater than 1
input data: 
    f: specified as a vector,or a matrix, represents f(x), the operated
    vector's dimension is N
    M: an integer, represents the output X's length
    K：an integer, K*dx*dX=1; dX=1/dx/K;
output data:
    F: specified as a vector,or a matrix, represents F(x), with the
    dimension changed to M
explain of some variables:
    input position vector: x = -(N-1)/2*dx:dx:(N-1)/2*dx or linspace(-(N-1)*dx/2,(N-1)*dx/2,N)
    output position vector: X = -(M-1)/2*dX:dX:(M-1)/2*dX or linspace(-(M-1)*dx/2,(M-1)*dx/2,M)
    
version: 1.0, date: 2021/10/03, author: YiLi Lu 
%}
% =========================================================================


if isrow(f)
    f=f.';
end
MM=(M-1)/2;
W=exp(-1i*2*pi/K);
F=czt(f,M,W,W^MM).*W.^((MM:-1:-MM).'.*((size(f,1)-1)/2));
end