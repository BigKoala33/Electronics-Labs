function plot_spec(sig,fs)

magnitude = abs(fft(sig)); %magnitude of every sample after fourier transform
N = length(sig); %Number of samples
df = fs/N; %Size of frequency samples
f = 0:df:fs/2;  %Frequency array definition only up to half the sampling frequency because of aliasing? 
Y = magnitude(1:length(f)); %Selection of FT values equal size as frequency array
plot(f,2*Y/N); %plot times mag*2 and divide by number of samples?
xlabel("Freq (Hz)");
ylabel("Magnitude");
end