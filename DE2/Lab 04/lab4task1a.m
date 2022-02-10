clear all
close("all")
pb = PyBench("COM7");
N = 500;
end_time = 10.0;
while true
    figure(1)
    clf(1)
    axis([0 end_time -90 90]);
    title("Acc P and R");
    ylabel("Angles(deg)");
    xlabel("Time (sec)")
    grid on; hold on;
    tic;
    for i = 1:N
        [p,r] = pb.get_accel();
        timestamp = toc;
        pitch = p*180/pi;
        roll = r*180/pi;
        plot(timestamp,pitch,'.b');
        plot(timestamp,roll,'.r');
        pause(0.001);
    end
end_time = toc;
end
