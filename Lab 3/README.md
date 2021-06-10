# Electronics 1-Lab 3

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Yellow-blue-circuit-MEng-EE.jpg" width="500" height="250">

This folder contains all the documents regarding the third lab.

This lab is called Operational Amplifiers. It consists on understanding and using Op-amp circuits.

## Task 1 - Loadin effect on analogue output of SIG_GEN (pin 26)

First my pk-to-pk was **1.58V**, with the resistor is then **1.21V**.
## Task 2 - Unity Gain Amplifier
### Step 1 - Install the chip and 0.1uF decoupling capacitor
Took me so long because I plugged it into 3.3V rather than 5V. It should be easy though.

### Step 2 - Build a unity gain non-inverting buffer

It all worked nicely, the signal got amplified back to **1.58V**.

## Task 3 - Amplification X2 Failure

It took a bit to understad the schematic but I managed at the end, to measure Vout don't ground the resistor just attach one leg to Vout and measure the output.

I did KCL and found that Vout is 5 and Vs is 2.5V, it is clipped because of the DC offset.

 Image 

## Task 4  - AC couple of source signal and X2 amplification success
I used two 0.22uf and two 0.33uf to make a 1.1uF which I measured to be **1.064uF**, the DC offset remains at 2.5V and, the pk-to-pk is around **3.12V** which is close to X2, it is not inverting because it doesn't change the direction of the signal.


## Task 5 - Gain Bandwidth product limitation - large amplification fail

### Step 1
We expect the input to be really small because the circuit is a potential divider, the input should be **1/101 Vs**, tiny.
### Step 2
Via calculation it was verified that the circuit should X101
I got images
### Step 3
V0 decreases as frequency increases

## Task 6 - Inverting amplifier

I verified that it gives X11 and the other one X10.
V01 looks nice and smooth, whereas Vo2 looks weird and noisy, I even tried using a different chip and still got the same output.

Image

## Task 7 - Amplify a microphone signal

My gain seems to be a bit more

It works

Image

## Task 8 - Audio amplifier

I did this part, but I didn't take any pictures, 