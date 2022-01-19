function [sig] = sine_gen(amp,f, fs, T)

dt = 1/fs; %size of sampling times
t = 0:dt:T %array of Time from 0 to T in dt steps
sig = amp*sin(2*pi*f*t); %sine function

end
