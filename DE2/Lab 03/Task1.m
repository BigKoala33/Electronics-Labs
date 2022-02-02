ports = serialportlist;
pb = PyBench("COM7");

pb.samp_freq = 100;
NSTEPS = 25;
input = zeros(NSTEPS,1);
output = zeros(NSTEPS,1);
tic
disp("Sweeping drive voltage for DC steady state characteristics");
for i = [1:NSTEPS]
    v = (i-1)*2.5/NSTEPS;
    input(i) = v;
    pb.dc(v)
    pause(0.5);
    data = pb.get_block(10);
    output(i) = mean(data);
end
pb.dc(0.0);
toc
figure
plot(input,output)
xlabel("Input V");
ylabel("Output V");
xline(1.5)
xline(1.7)
title("DC input output transfer function");
fclose(instrfind());