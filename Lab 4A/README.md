# Electronics 1-Lab 4A

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Yellow-blue-circuit-MEng-EE.jpg" width="500" height="250">

This folder contains all the documents regarding the fourth lab.

This lab is called Setting up MicroPython. It consists on setting up the micropython environemnt etc.

## Task 1 - Installing the CP2102 device driver
This step went down smoothly, the installer did all the job
https://tinyurl.com/y5gl5fxr
The yellow LED did not turn on but the device appeared under the Ports section.

## Task 2 - Installing Mu-Editor

### Step 1 - Check your Python installation

I had to use py --version but it worked fine 
Image

### Step 2 - Installing the Mu-Editor

The installation went well. When the file button is grey just restart the software

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204A/images/MU.png" width="400" height="300">

## Task 3 - Erase and Flash MicroPython onto your ESP32
### Step 1
The firmware has to be done only once. It worked COM5

### Step 2 - Verify MicrPython is installed properly
It worked fine

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204A/images/HelloW.png" width="300" height="350">

### Step 3 - Controlling white LED
It did blink on and off, pretty nice

import machine
LED = machine.Pin(X, Pin.OUT)

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204A/images/WhiteLED.jpg" width="300" height="350">

### Step 4 - Blinking the LED
I found the writing loops very uncomfortbale on the REPL but it worked fine using control C.

## Task 4 - Explore wht are included in MicroPython
 I did the challenge found some code on the documentation, its important to deinitialise PWM pins before using them in anything else specially on the REPL environment

 https://docs.micropython.org/en/latest/esp8266/tutorial/pwm.html


 <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204A/images/pulsa.png" width="300" height="350">

 ## Task 5 - Running Python scripts from files
 ### Step 1 - Create your uPy code files
 I find it weird that there is no file tab to open and create new files but it was pretty easy, I had to change the code slightly define the LED separetly importing Pin from machine.

### Step 2 - Flash your program to ESP32 internal flash drive
The files icon gets grey sometimes just restart the IDE quickly, control D is to reset but it can also be clicked manually. **UPDATE** Just close the REPL and you can access the files, give it 2 seconds each time or it won't like it.

### Step 3 - “Hello world!” on the OLED display
Make sure to import all the modules in, including the font and the oled. It then worked good

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204A/images/Hello.jpg" width="300" height="350">