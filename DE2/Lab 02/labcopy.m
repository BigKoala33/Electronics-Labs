clear all
[sig fs] = audioread("two_drums.wav");
T = 0.02;
N =fs*T
E = [];
for i=1:N:length(sig)-N+1
    seg = sig(i:i+N+1);
    E =[E seg'*seg];
end
figure(1)
clf;
plot(sig);
xlabel("Sample no");
ylabel("Signal (V)");
title("Two drums");
figure(2);
clf;
x = 1:length(E);
plot(x,E);
figure(3);
plot_spec(E - mean(E),1/T );