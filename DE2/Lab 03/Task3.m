clear all
ports = serialportlist;
pb = PyBench("COM7");
max_v = 1.55 ;
min_v = 1.45;
N = 700;
f_sig = 3;
output = zeros(19,3);
figure()
for i =1:1:20
    pb = pb.set_sig_freq(i);
    pb = pb.set_max_v(max_v);
    pb = pb.set_min_v(min_v);
    pb.sine();
    pause(2)
    pb = pb.set_samp_freq(100);
    y = pb.get_block(N);
    x_pk2pk = max_v - min_v;
    y_pk2pk = max(y) - min(y);
    output(i,1) = i;
    output(i,2) = y_pk2pk/x_pk2pk;
    output(i,3) = 20*log10(y_pk2pk/x_pk2pk);
end


