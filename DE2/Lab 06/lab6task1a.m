clear all
[sig fs] = audioread('bgs.wav');

x = sig + 0.2*rand(size(sig));
figure(1)
clf;
xlabel('Sample N')
ylabel('Signal (V)')
title('Stay Alive Musicote')

N = size(x);
taps = 1000;
for i=taps:N
    y(i)=0;
    for j = 0:taps-1
        y(i) = y(i) + x(i -j);
    end
    y(i) = y(i)/taps;
end
plot(x)
hold on
plot(y)
sound(x,fs)
disp('Original')
pause
sound(y,fs)
disp('Filtered')
