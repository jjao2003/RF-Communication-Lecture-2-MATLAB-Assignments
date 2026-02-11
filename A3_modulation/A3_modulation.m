clear; close all; clc;
Fs = 10000; t = 0:1/Fs:0.1;
fm = 100; fc = 2000; % Message and Carrier freq
m_t = sin(2*pi*fm*t); % Baseband
s_t = m_t .* cos(2*pi*fc*t); % Passband

% Plotting Baseband
figure; plot(t*1000, m_t); title('A3: Baseband m(t)');
xlabel('Time [ms]'); exportgraphics(gcf, 'A3_baseband.png');

% Plotting Passband (zoomed)
figure; plot(t*1000, s_t); xlim([0 5]);
title('A3: Passband s(t) = m(t) cos(2\pi f_c t)');
xlabel('Time [ms]'); exportgraphics(gcf, 'A3_passband.png');
