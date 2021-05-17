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
