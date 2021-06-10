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

## Task 3 - Erase and Flash MicroPython onto your ESP32
### Step 1
The firmware has to be done only once. It worked COM5

### Step 2 - Verify MicrPython is installed properly
It worked fine

### Step 3 - Controlling white LED
It did blink on and off

Images

### Step 4 - Blinking the LED
I found the writing loops very uncomfortbale on that environment but it worked fine using control C.

## Task 4 - Explore wht are included in MicroPython
 I did the challenge found some code on the documentation 
 https://docs.micropython.org/en/latest/esp8266/tutorial/pwm.html

 ## Task 5 - Running Python scripts from files
 ### Step 1 - Create your uPy code files
 I find it weird that there is no file tab to open and create new files but it was pretty easy, I had to change the code slightly define the LED separetly importing Pin from machine.

### Step 2 - Flash your program to ESP32 internal flash drive
The files icon gets grey sometimes just restart the IDE quickly, control D is to reset but it can also be clicked manually

### Step 3 - “Hello world!” on the OLED display
Make sure to import all the modules in, including the font and the oled. It then worked good

Image