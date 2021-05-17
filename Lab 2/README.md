# Electronics 1-Lab 2

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Yellow-blue-circuit-MEng-EE.jpg" width="500" height="250">

This folder contains all the documents regarding the second lab.

This lab is called Electronics Circuits. It consists on building and testing circuits with resistors, capcitors and an LED.

## Task 1 - Calibrating the DC voltage source

This task was pretty normal. There were no issues whatsoever these are my results:

| Voltage and measured voltages | | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **Voltage Setting (V)** | 3.0 | 2.5 | 2.0 | 1.5 | 1.0 | 0.5 |
| **Measured Voltage Mult (V)** | 2.88 | 2.43 | 1.97 | 1.47 | 1.02 | 0.55 |
| **Error in %FS** | 3.64 | 2.12 | 0.91 | 0.91 | 0.61 | 1.52 |

| Measured voltage against voltage setting | | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **Measured Voltage (V)** | 3.0 | 2.5 | 2.0 | 1.5 | 1.0 | 0.5 |
| **Measured Voltage Mult (V)** | 3.13 | 2.58 | 2.08 | 1.53 | 1.00 | 0.44 |

## Task 2 - Finding the source resistance of SIG_GEN

This task required me to make a 69 ohm resistor, I made a parallel combination of a 100 and 220 ohm resistors, 100 || 220 = **68.75** which is resonably good. This is what it looks like:

Image

| Vs (measured) | Vs Setting | 10k | 1k | 100 | 69 |
| --- | --- | --- | --- | --- | --- |
| 3.0 | 3.13 | 2.96 | 2.95 | 2.28 | 1.93 |
| 2.0 | 2.08 | 2.0 | 1.98 | 1.92 | 1.7 |
| 1.0 | 1.00 | 1 | 0.99 | 0.96 | 0.93 |

For 69 ohms here is the table

| Vs (measured) | Voltage out (V) | Current out (mA) | Internal Resistance (Ohm) |
| --- | --- | --- | --- |
| 3.0 | 1.93 | 28.00 | 38.25 |
| 2.0 | 1.7 | 24.70 | 12.18 |
| 1.0 | 0.93 | 11.76 | 5.19 |

Resistance might vary with current & voltage. It might not be constant. Perhaps it could be a funtion of current.


## Task 3 - Voltage Divider Circuit

The first measurement should be 1.5V, perhaps a bit less. It is a potential divider circuit and the resistances are the same therefore they equally share the potential difference. I measured **1.46V** which is close enough considering internal resistance. This is what it looked like:

Image


I did the calculations using the the potential divider equation, I obtained a voltage of around 2.0625V and my measured value was **2.01V**.

Image

I was not quite sure waht they wanted here so I used the potential divider equation based on ohms law to make an expresion for Vout. Vout = Vs*(R2/R(R1+R2))

For DC I measured a vs of 1.6V and estimated it should be around 1.1V using the potential divider equation, I measured a potential difference of **1.08V** which proves that it works. With AC I measured a VS of 1.03V and estimated around 0.71V which I then measured and obtained **0.7V**. Confirming that the potential divider equations hold for sine waves in terms of AC and DC.

Image?

## Task 4 - Thevenin's Equivalent Network

I started by drawing the following circuit:

Image

I then did KCL on the middle node to obtain the following expression: (3-V)/(10000) + I = V/22000

Which rearranged to make V the subject makes:
V = 6875*I + 33/16

Therefore the Thevenin equivalent network consists of a **6875 ohm resistor** and a **2.0625V voltage supply**.

Image of thevenin equivalent network

The Vth measured voltage turned out to be **2.03V**, which is pretty close to predicted one. I don't get what Why is asking here. I guess the whole network can be simplified to its Thevenins equivalents.

I measured a potential difference across Vout of **1.19V**, I then applied the potential dividers equation using the Thevenin voltage and found that R was **7059 ohms**. Which is arguably close to the predicted 6875 ohms.

## Task 5 - Complex Resistor Network 

In order to make the 20k ohm resistor, I used a parallel combination of a 22k ohm and a 220k ohm resistor. This yielded exactly 20 k ohms.

After performing nodal analysis on the circuit. I worked out the values of V1 and V2 which resulted on **1V and 0.5V** respectively. I then measured these values nad obtained **0.98V and 0.48**