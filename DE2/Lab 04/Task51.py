import pyb
from pyb import LED, ADC, Pin
from oled_938 import OLED_938
from mpu6050 import MPU6050

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

imu = MPU6050(1,False)

while True:
    b_LED.toggle()
    
    oled.draw_text(0,20,"Acceleration (roll):{:5d} ".format((toc-tic)*0.001))
    oled.draw_text(0,40, "POTSK reading{:5d}".format(pot.read()))
    oled.line(64,0,reading,64,"yellow")
    oled.display()
    pyb.delay(100)