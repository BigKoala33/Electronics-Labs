import pyb
from pyb import LED, ADC, Pin
from oled_938 import OLED_938

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

oled.draw_text(22,0,"Hello world!")
tic = pyb.millis()

while True:
    b_LED.toggle()
    toc = pyb.millis()
    oled.draw_text(0,20,"Delay time:{:6.3f}sec".format((toc-tic)*0.001))
    oled.draw_text(0,40, "POTSK reading{:5d}".format(pot.read()))
    tic = pyb.millis()
    oled.display()
    delay = py.rng()%1000
    pyb.delay(delay)