clear; close all; clc;
Fs = 10000; T = 0.2; t = 0:1/Fs:T-1/Fs;
Vin = 10*sin(2*pi*500*t) + 5*sin(2*pi*600*t) + 3*sin(2*pi*700*t) + 5*sin(2*pi*800*t);

% BEFORE filtering
N = length(Vin); X = fft(Vin); f = (0:N-1)*(Fs/N); halfN = floor(N/2);
mag_before = abs(X(1:halfN));
figure; plot(f(1:halfN), mag_before); grid on; xlim([0 1200]);
title('A2: Spectrum BEFORE filtering'); exportgraphics(gcf, 'A2_before.png');

% Case: 500 Hz only (LPF)
[b,a] = butter(6, 550/(Fs/2), 'low');
y500 = filter(b,a,Vin);
% Repeat FFT and export as 'A2_after_500Hz.png'

% Case: 800 Hz only (HPF)
[b,a] = butter(6, 750/(Fs/2), 'high');
y800 = filter(b,a,Vin);
% Repeat FFT and export as 'A2_after_800Hz.png'
