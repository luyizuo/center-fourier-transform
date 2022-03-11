function X=center_czt_2(x,M,K)
% another method to realize center fourier transform from N points to M points
N=length(x);
n = 0:N-1;
m = 0:M-1;
W = exp(-2*pi*1i/K);
L = M+N-1;
g = zeros(1,L);
g(1:N) = x.*W.^((n-(M-1)/2).^2/2);
h = zeros(1,L);
h(1:M) = W.^(-m.^2/2);
n = -(N-1):1:-1;
h(L-N+2:L) = W.^(-n.^2/2);
dress = W^(-(M-N)^2/8)*W.^((m-(N-1)/2).^2/2);
X=ifft(fft(g).*fft(h));
X=dress.*X(1:M);
end









