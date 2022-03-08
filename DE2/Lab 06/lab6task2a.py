
from audio import MICROPHONE
import pyb
from pyb import ADC, Pin, Timer

mic = ADC(Pin('Y11'))
sample_timer = Timer(7, freq=8000)

audio = MICROPHONE(sample_timer,mic,160)