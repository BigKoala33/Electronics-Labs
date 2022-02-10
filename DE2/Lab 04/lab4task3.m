clear all
close("all")
pb = PyBench("COM7");
model = IMU_3D();
N = 50;
tic;
gx = 0; gy=0;
fig1 = figure(1);
while true
    for i = 1:N
        [p,r] = pb.get_accel();
        [x,y,z] = pb.get_gyro();
        dt = toc;
        tic;
        pitch = p*180/pi;
        roll = r*180/pi;
        gx = max(min(gx +x*dt,pi/2),-pi/2);
        gy = max(min(gy +y*dt,pi/2),-pi/2);
        xnew = 0.8*(gx + x*dt) + (1-0.8)*r;
        ynew = 0.8*(gy + y*dt) + (1-0.8)*p;
        clf(fig1);
        subplot(3,1,1);
        model.draw(fig1,p,r,"ACC");
        subplot(3,1,2);
        model.draw(fig1,gy,gx,"Gyro");
        subplot(3,1,3);
        model.draw(fig2,ynew,xnew,"Gyro");
        pause(0.0001);
    end
end
