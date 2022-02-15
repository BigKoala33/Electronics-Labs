from cmath import pi
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
pnew =0
while True:
    a = int(imu.get_acc()[1])
    toc = pyb.millis()
    g = int((imu.get_gyro()[1] * ((toc-tic)/1000)))
    pnew = (0.8*(pnew + g) + (1 - 0.8)*a)
    oled.draw_line(32,32,int(a*180/pi),1,1)
    oled.draw_line(86,32,int(pnew*180/3.14),1,1)
    oled.display()
    tic = pyb.millis()
    pyb.delay(100)
    oled.clear()


    