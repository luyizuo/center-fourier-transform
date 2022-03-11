
function "fft" and "czt" in Matlab are strong tools for digital signal processing but they are not born to fourier transform in optics since the frequency domain in optics is usually having the zero-frequency component at the center of spectrum

for "fft", it's easy to use "fftshift" to get things done (maybe the phase is wrong? I don't know), but for "czt", things got a little bit confusing, espacially when I want the phase (or the imaginary part)
to be correct. And this is the purpose of this code.

I can assure that the code works pretty well, but I didn't organized the explanative files orderly. Because the code is written in 2021 and now it's 2022. Files in the folder are scattered. Particularly, there is a file named “draft.m”explain the rationale behind the code, but unfortunately it's not the version of this code. So, if you want to get very deep insight into the center fourier transform, those can serve as a reference.

I would appreciate it if someone helped me organize the residual files that I didn't.



version: 1.0, date: 2020/3/11, author: YiLi Lu