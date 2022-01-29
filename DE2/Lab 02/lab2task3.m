clear all
%setting up pyBench
ports = serialportlist;
pb = PyBench(ports(end));
%set fs
fs = 8000;
pb = pb.set_samp_freq(fs);
% Capture a number of samples
N = 1000;
samples = pb.get_mic(N);
%This step removes DC offset
data = samples - mean(samples);
%plot data
figure(1);
clf
plot(data);
xlabel("Sample Number");
ylabel("Signal Voltage (V)");
title("Microphone signal");

% fing and plot spectrum
figure(2);
plot_spec(data,fs);
