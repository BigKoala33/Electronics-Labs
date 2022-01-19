# Electronics 1-Lab 4B

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Yellow-blue-circuit-MEng-EE.jpg" width="500" height="250">

This folder contains all the documents regarding the fourth-B lab.

This lab is called ESP32, Sensors and Drivers it consists on using sensors and drivers using micropython.


## Task 1 - Digital Outputs

### Getting LEDs on
Remember to put the resistors to not burn the LEDs lol, all the comands work fine. **Close REPL if you want to access files**, Everything worked flawlessly here are some pictures.

#### Red LED on
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/redon.jpg" width="300" height="400">

#### Both LEDs on
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/bothon.jpg" width="300" height="300">



## Task 2 - Digital Input and switch debouncing

### Button working
The button worked perfectly fine using the sample code, here is some pictures showing that when I clicked it it would go to 0 and unclicked 1.

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/buton.jpg" width="300" height="300">

### Controlling LEDs
The control of the LED with the SW button is pretty impressive very quick response.
I wrote my script so it would turn the the red on and the green off and viceversa. It worked fine
#### Controlling LEDs - Switch pressed
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/ButonRed.jpg" width="300" height="300">

#### Controlling LEDs - Switch released
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/ButonGreen.jpg" width="300" height="300">


### Bounce Effect

The bounce effect is very noticiable, it registers 2 clicks rather than one. The capacitor kind of quantifies the clicks rather than leaving them as an imperfect analog signal.

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/Bounce.jpg" width="600" height="200">


## Task 3 - Rotary switch for control

I first couldn't find the the packages for this and spend a while on a silly code error using "from time" rather than "import time". Apart from that everything went well. 

### Modified script
I controlled the luminosity of the LED by changing the max and min values to 0 and 1023, I initialised the LEDS like in previous tasks, then I just adjusted the duty cycle according to the val_new. It worked good, but I would like to increase the step of each spin. Its tedious to go from 0 all the way to 1023. I did this by adding +5 to val_new all the time.

#### Low brightness
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/LowBright.jpg" width="300" height="300">

#### Zero Brightness
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/0Bright.jpg" width="300" height="300">

## Task 4 - Analogue Input and the Analogue to Digital Converter

### Digital reading of the Potentiometer
It was good, the range of the potentiometer goes from 0 to 511 due to the 9-bit.  The 3.3V and the GND don't matter to what Pin are conncted because its just a sort of potential divider, switching them would just flip the voltage.

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/Pot.jpg" width="300" height="350">

#### Potentiometer Read
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/PotRead.jpg" width="300" height="350">

### Optional step + 4
I did the optinal bit using the magnet of the speaker, the sensor of the esp32 is horrible. It keeps fluctuating all the time, for my script all I did was initialise the LED, which I used the green one. I then used 120 as a threshold value but because it keeps fluctuating it is fairly unreliable. If the reading of the hall sensor is greater than 120 turn the LED on. otherswise off, with a sleep of 200ms. The Red LED is on because I didn't initialise it as an LED. I didn't work too well If I am honest.

#### Magnet Far away
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/FarMagnet.jpg" width="300" height="300">

#### Magnet Close
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/CloseMagnet.jpg" width="300" height="300">

## Task 5 - Servo Motor

### Adjusting and trying servo motor
I installed it on pin 18 rather than 23 because 23 was being used for the rotary encoder. I then found that the lower extreme of my servo is 19 and the max 125. It can be seen on the images the range of 180 degrees.

### Modifying script
I just modified the previous task script to alter the duty cycle of the servo with val_new. OF course after initialising it as a PWM object.

#### Min Servo
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/MinServo.jpg" width="300" height="300">

#### Mid Servo
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/MidServo.jpg" width="300" height="300">

#### Max Servo
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/MaxServo.jpg" width="300" height="300">

## Task 6 - DC motor and the H-bridge motor driver

### Using DC motor
I don't really get how they work I guess lowering one and increasing the other one maximises the speed, the speed must be given by the difference between them? I tried using the previous script to make a velocity adjuster using the encoder but it did the oposite I found that around 350 duty it won't run so I changed the limits to 350 to 1023. Then as I moved down, towards 350 it got faster and slower towards 1023, so I am a bit confused but it does work fine.

#### DC motor and Drivers

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/DCMotor.jpg" width="350" height="300">

## Task 7 - Neopixel strip

### Using Neopixel strip
I understand this one quite well, it does make sense and it's cool that you can control each pixel individually. I did some extra experimenting with the documentation I found a cool effect one and modified it slightly.

#### Lab Code
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/LabCode.jpg" width="300" height="300">

#### Experiment 1
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/Exp1.jpg" width="300" height="300">

#### Experiment 2
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/Exp2.jpg" width="300" height="300">

#### Experiment 3
<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%204B/images/Exp3.jpg" width="300" height="300">

## Learning Outcomes
 - I can use mycropython
 - I can use digital and analog pins
 - I can use PWM signals to drive DC motors and servos.
 - I can use hall effect sensors and neopixel led strips.
 - I understand how rotary encoders work.
 - I can use the OLED display and have an understanding of the microcontroller software.