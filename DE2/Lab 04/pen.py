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
linel = 20

def translate(value, leftMin, leftMax, rightMin, rightMax):
    # Figure out how 'wide' each range is
    leftSpan = leftMax - leftMin
    rightSpan = rightMax - rightMin

    # Convert the left range into a 0-1 range (float)
    valueScaled = float(value - leftMin) / float(leftSpan)

    # Convert the 0-1 range into a value in the right range.
    return rightMin + (valueScaled * rightSpan)

while True:
    b_LED.toggle()
    reading = translate(pot.read(),0,4095,-90,90)
    oled.line(64,0,reading,64,"yellow")
    oled.display()
    pyb.delay(100)
    oled.clear()

    