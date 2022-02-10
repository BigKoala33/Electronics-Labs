# Electronics 2-Lab 04

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Yellow-blue-circuit-MEng-EE.jpg" width="500" height="250">

This folder contains all the documents regarding the fourth lab of Electronics 2.

This lab is called IMU and OLED Display

## Task 1 : The Inertia Measurement Unit (IMU)
we are gonna be using the accelerometer and the gyroscope using the following functions we can access each

```matlab
[p, r] = pb.get_accel();
[x, y, z] = pb.get_gyro();
```
Where p is the pitch and r is the roll angle in radians and x y and z are the rate of rotations in the 3 axes.

### Testing the accelerometer

<p align="center">
<img src="images/T1.png" width="50%">
</p>

These are the orientations of the pitch and roll which match the diagram on the board.

<p align="center">
<img src="images/T1.C.jpg" width="50%">
</p>

Sliding motion at introduces noise to the pitch and roll angles, the board has not rotated but because the accelerometer measures the forces in x and y it can be fooled to think it is rotating when it is simply being moved around.

<p align="center">
<img src="images/T1.2.jpg" width="50%">
</p>

It is not very clear how we are intended to rotate the board, however if we rotate it about the yaw it is unable to figure it out and the readings for pitch and roll get noisy and messy.
<p align="center">
<img src="images/T1.2.jpg" width="50%">
</p>



### Testing the gyroscope
The integration through sumation is a bit unclear, min limits the values to pi/2 and max makes sure they do not go under -pi/2 it is the recurrence relationship which causes integration through sumation. So it works out the angle and add it to the previous one which could be thought as segments adding to other segments. It would make sense that errors accumulate

<p align="center">
<img src="images/T1.2.jpg" width="50%">
</p>

There seems to be an error in our roll reading from the gyroscope, it is linear and no matter what angle it is stopped at it decreases linearly.

By reading the graph it can be determined it is decreasing at a rate of, it decreases 20 degrees every 8 seconds so we need to add 20*(pi/180)/8*dt but then it goes up instead. It is not clear why there is only an offset for the x axis and not the y axis angle.


## Task 2 Visualization in 3D

<p align="center">
<img src="images/Task2.jpg" width="50%">
</p>

The gyro model has the drifing problem and the accelerometer is very responsive and sort of vibrates due to the noise where as the the gyro moves smoothly until it reaches negative 90 degrees.
Shaking the board has



## Task 3 Combining the two measurements using Complementary Filter

<p align="center">
<img src="images/Task3.jpg" width="50%">
</p>

The filtered version is way less noisy and moves very smoothy which is sort of trade of with responsiveness and has a small lag there is also no more drifting down angle.

### Running pyboard with micropython

Downloaded Putty and have acces to sthe SD cards also can interact with the python kernell of the board.

We managed to center the text but due to the offset

## Pendulum challenge

We managed to do the pendulum challenge with the following code interpolating the values from 0 to 4095 to -90 and 90 and then just plot them from the middle pixel

## Task 5 Using the IMU driver on PyBench Board 