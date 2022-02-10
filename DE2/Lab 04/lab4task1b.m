clear all
close("all")
pb = PyBench("COM7");
N = 500;
end_time = 10.0;
gx = 0; gy= 0;
while true
    figure(1)
    clf(1)
    axis([0 end_time -90 90]);
    title("Gyro P and R");
    ylabel("Angles(deg)");
    xlabel("Time (sec)")
    grid on; hold on;
    timestamp = 0;
    tic;
    for i = 1:N
        [x,y,z] = pb.get_gyro();
        dt = toc;
        timestamp = timestamp + dt;
        gx = max(min(gx +x*dt,pi/2),-pi/2);
        gx = max(min(gy +y*dt,pi/2),-pi/2);
        plot(timestamp,gy*180/pi,'.b');
        plot(timestamp,gx*180/pi,'.r');
        pause(0.001);
    end
end_time = timestamp;
end