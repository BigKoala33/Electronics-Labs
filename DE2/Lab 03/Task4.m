clear all
clf
ports = serialportlist;
pb = PyBench("COM7");
fs = 50; 
pb = pb.set_samp_freq(fs);
x_min = 0.7;
x_max = 1.2;
N = 150;
pause()
pb.dc(x_min);
pause(1);
pb.dc(x_max);
rise = pb.get_block(N);
pb.dc(x_min);
fall = pb.get_block(N);
pb.dc(x_max);
rise2 = pb.get_block(N);
pb.dc(x_min);
fall2 = pb.get_block(N);
data = [rise' fall' rise2' fall2'];

figure(1)
clf
plot(data)
xlabel("Sample Number");
ylabel("Output V");
title("Step response");
fclose(instrfind());