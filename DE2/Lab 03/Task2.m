f = (0:0.1:20);
D = [0.038 1.19 43 1000];
s = 1i*2*pi*f;
G = 1000./abs(polyval(D,s));
Gdb = 20*log10(G);
plot(f,Gdb);
xlabel("Frequency (Hz)");
ylabel("Gain (dB)");
title("Frequency Response Theoretical");
