import pyb
from pyb import LED, ADC, Pin
from oled_938 import OLED_938
from mpu6050 import MPU6050

imu = MPU6050(1,False)
b_LED = LED(4)
pot = ADC(Pin("X11"))


i2c = pyb.I2C(2,pyb.I2C.MASTER)
devid = i2c.scan()
oled = OLED_938(
    pinout = {"sda":"Y10","scl":"Y9","res":"Y8"},
    height = 64,
    external_vcc = False,
    i2c_devid=i2c.scan()[0],
)
oled.poweron()
oled.init_display()
tic = pyb.millis()
while True:
    a = int(imu.get_acc()[1]*180/3.14)
    toc = pyb.millis()
    g = int((imu.get_gyro()[1] * ((toc-tic)/1000))*180/3.14)
    oled.draw_line(32,32,a,1,1)
    oled.draw_line(86,32,g,1,1)
    oled.display()
    tic = pyb.millis()
    pyb.delay(40)
    oled.clear()

    