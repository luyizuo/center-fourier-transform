

% the norm of fft's output is symmetric but the phase is not.
F=[1 2 3 4-1i 3+1i 4-1i 3 2 1].';
FF=fftshift(fft(fftshift(F)));
plot(abs(FF))
plot(real(FF))
plot(imag(FF))

% center_czt dosen't have this problem
F=[1 2 3 4-1i 3+1i 3+1i 4-1i 3 2 1].';
FF=center_czt(F,1000,1000703);
plot(abs(FF))
plot(real(FF))
plot(imag(FF))
