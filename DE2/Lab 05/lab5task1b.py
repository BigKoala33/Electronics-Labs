import pyb
from pyb import Pin, Timer

A1 = Pin("X3",Pin.OUT_PP)
A2 = Pin("X4",Pin.OUT_PP)
B1 = Pin("X7",Pin.OUT_PP)
B2 = Pin("X8",Pin.OUT_PP)
PwMA = Pin("X1")

tim = Timer(2,freq= 1000)
motorA = tim.channel(1,Timer.PWM, pin = PwMA)
motorB = tim.channel(2,Timer.PWM,pin=PwMA)
pot = pyb.ADC(Pin("X11"))

def translate(value, leftMin, leftMax, rightMin, rightMax):
    # Figure out how 'wide' each range is
    leftSpan = leftMax - leftMin
    rightSpan = rightMax - rightMin

    # Convert the left range into a 0-1 range (float)
    valueScaled = float(value - leftMin) / float(leftSpan)

    # Convert the 0-1 range into a value in the right range.
    return rightMin + (valueScaled * rightSpan)

def A_forward(value):
    A1.low()
    A2.high()
    motorA.pulse_width_percent(value)

def A_back(value):
    A2.low()
    A1.low()
    motorA.pulse_width_percent(value)

def A_stop():
    A2.low()
    A1.low()

def B_forward(value):
    B1.low()
    B2.high()
    motorB.pulse_width_percent(value)

def B_back(value):
    B2.low()
    B1.low()
    motorB.pulse_width_percent(value)

def B_stop():
    B2.low()
    B1.low()

A_forward(translate(pot.read()),0,4095,0,100)