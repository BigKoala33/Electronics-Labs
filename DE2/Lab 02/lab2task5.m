clear all
[sig fs] = audioread("two_drums.wav");
T0 = 1/fs;
dt = 20e-3;
N_ineach = dt/T0;
rows = rou nd(length(sig)/N_ineach +1);
obj_size = rows*N_ineach;
size_diff = obj_size-length(sig);
M  = zeros(1,size_diff);
cato = cat(2,sig',M);
cato = reshape(cato,[N_ineach,rows]);
resampled = sum(cato',2)/max(abs(sum(cato',2)))
E = sum(cato'.^2,2);


%plotting signal
figure(1)
clf;
plot(resampled);
xlabel("Sample no");
ylabel("Signal (V)");
title("Two drums");

%plotting energy
figure(2)
clf;
plot(E)
hold on
xlabel("Sample no");
ylabel("Energy");
[pt, loc] = findpeaks(E,'MinPeakHeight',60)
plot(loc,pt,"o")
hold off
title("Energy");

figure(3)
plot_spec_dB(resampled,1/20e-3)

figure(4)
plot_spec(E - mean(E),1/20e-3)