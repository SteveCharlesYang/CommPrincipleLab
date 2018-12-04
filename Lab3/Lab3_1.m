%% Part 1
clear;
T=0.001;
t=-999:1000;
ts=0.0005.*t;

mt=(1/(10.*T)).*sinc(ts/(10.*T));

figure;
subplot(131);
plot(ts,mt);
n=length(t);
y=fftshift(fft(mt,n));
subplot(132);
plot(ts,(abs(y)));
subplot(133);
plot(ts,20.*log10(abs(y)/max(abs(y))));

%% Part 2
kf1=0.25;
kf2=4;
fc=10/T;
mt_int = kf2*2*pi*cumsum(mt);
fm = cos(2*fc*pi*ts + mt_int); 

figure;
plot(ts,2*fc*pi*ts + mt_int);

figure;
subplot(131);
plot(ts,fm);

fm_fs=fftshift(fft(fm,n));

subplot(132);
plot(ts,(abs(fm_fs)));
subplot(133);
plot(ts,20.*log10(abs(fm_fs)/max(abs(fm_fs))));

%% Part 3

