close all;
clear all;
clc;

time = linspace(0,1,1000);
desiredNumberOfDataPoints = 120;
fftTime = linspace(0,1,desiredNumberOfDataPoints);
testSignal = sin(2*pi*time*25)+sin(2*pi*time*10);
reconstructed = fft_normalize(testSignal,desiredNumberOfDataPoints);
figure
set(gcf,'position',[10 10 1500 500]);
plot(time,testSignal,'k.-');
hold on;
plot(fftTime,reconstructed,'r.-');
