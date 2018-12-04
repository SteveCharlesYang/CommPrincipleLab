function [  ] = plot_fft( Fs, L, mt )
%PLOT_FFT 此处显示有关此函数的摘要
%   此处显示详细说明

Y = fftshift(fft(mt));

absY = abs(Y/L);  % 每个量除以数列长度 L
f = linspace(-Fs/2, Fs/2, 2*L);
plot(f, absY);
grid on;
axis([-Fs*2/3 Fs*2/3 0 max(absY)*1.1]);

end

