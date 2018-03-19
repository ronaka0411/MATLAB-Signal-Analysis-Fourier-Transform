% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Ronak Agrawal
% Signal Modulation Analysis (Carrier, Sampling) using Fast fourier Transform
% Input: sine wave original signal with unknown particular or varying frequencies, sampling frequency, period of signal
% output: Magnitude, Phase plots for the given signal. To know thw unknown frequencies of the signal.
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear all
close all

% Initialization
amplitude = 2;
carrier_frequency = 1500; % Fc can be any frequency(s). Here we consider it within the audible range 0-4kHz
sampling_frequency = carrier_frequency * 10; % sampling frequency should be much higher while simuation (Acc to Nyquist Criteria Fs >= 2.fc)
period_of_signal = 0.010; %time is 10 ms
samples_points = 0:1/sampling_frequency:period_of_signal; %n (time)
number_of_samples = length(samples_points);
resolution = sampling_frequency / number_of_samples; % resolution = Fs/N, very important parameter to decide unknown frequencies

% Generating a signal
signal = amplitude.*sin(2*pi*carrier_frequency*samples_points); %signal = sin(2*pi*fc*n), f <= fs/2

% Plotting the given signal
subplot(3,1,1);
plot(samples_points,signal);
title('Sample sin signal Frequency');
xlabel('time in seconds')
ylabel('Amplitude')

% Plotting the magnitude of FFT of the signal
subplot(3,1,2);
stem(abs(fft(signal)));
title('Magnitude plot of the FFT of signal');
xlabel('samples')
ylabel('Magnitude')

% Plotting the phase of FFT of the signal
subplot(3,1,3);
stem(angle(fft(signal)));
title('Phase plot of the FFT of signal');
xlabel('samples')
ylabel('Phase')

% Analysis
resolution



