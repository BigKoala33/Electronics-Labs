# Electronics 1-Lab 1

<img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Yellow-blue-circuit-MEng-EE.jpg" width="500" height="250">

This folder contains all the documents regarding the first lab.

This lab is called Signals and Scope and it consists on understanding how to use the signal generator and the oscilloscope.

### Task 1: Learning to control the signal generator

This step was was fine, all signal modes seem to be fine and all the other parameters are there.

### Task 2: Setting up the Oscilloscope

It all worked fine, I connected the oscilloscope to a phone 5v transformer and the signal generator to my laptop.

### Task 3: Understanding the DSO dsiplay

I understand more less every parameter, apart from the trigger stuff. Each of the squares refers to the divisions of Voltage and Time. Vertical for voltage indicated in the bottom left and Horizontal for time indicated on the middle bottom section. These can be modified. The right arrow delimits the trigger level.

### Task 4: Controlling the DSO with the buttons and the rotary switch

Turning the knob will shifts the whole wave up and down. Turning the knob clockwise moves it up and turning the knob anti-clockwise shifts it fown. It can be useful to take measurements from the signal. Place the wave on an easier position to use the background grid and measure different things.

Moving the Sec/div setting beyond 20ms per division does something weird, it turns the signal into a constant flat signal.

Turning the knob while after pressing the time button twice I think goes through the stored signal to perfom some better analysis of the signal Im guessing.

Setting the swtich to AC turns the signal into an AC wave. In the screen what the signal appears to be shifted down and the middle of the signal is at the GND level. Half of the signal being above and half below the GND axis. I think it is useful to analyse AC signals, the DC mode must be for DC signals. I am not sure how the GND mode would work.

### Task 5: Triggering on an oscilloscope

When the trigger level is outside the signal appears to be moving, when it is inside the trigged mode is activated and the wave appears stationary. I am really not sure what the trigger edge does it does something with the waiting and holdoff settings. But I am really unclear of it.

### Task 6: Measure DC voltage

Measuring the 2.5V with the oscilloscope returned a voltage of **~2.43V** and the multimeter measured **2.43V** too which means that both pieces of equipment are accurate and fairly precise.

Table

Plot

### Task 7: Measure sine wave signal

#### 2.5kHz signal
The signal seems to be offseted from the GND which is a bit weird. I did measure the maximum and minimum with the oscilloscope and obtained **2.40V** and **0.82V** respectivetly which leaves with a pk-to-pk Voltage of **1.58V** which is close enough to 1.65V. I then measure in the DC setting using the multimter and obtained **1.64V** which must be the largest positive voltage value measured. The AC measurement is **0.48V** and I am unsure what it represents. I though it could have been the RMS but it isnt.

#### 100kHz signal
Using the oscilloscope I measured as minimum voltage **0.89V** the maximum **2.31V** and the pk-to-pk **1.42V** which is pretty far off from 1.65V. The DC measurement was again **1.64V** and the AC one decreased to **0.119V** which makes me think that the AC measurements are frequency dependent.

### Task 8: Measure PWN signal

The time period of the signal was **120us** which gave a frequency of **8.3kHz**. The duty cycle I think is the ratio between the duration of the positive square voltage part and the 0 region. My aproximated duty cycle was **5/12** which approximates to **42%** which is pretty close to the signal gen values. The multimeter DC measurement was **1.3V** which I think it is also involved with the duty cycle. 3.3V  is the max voltage output of the ESP32 time 0.4 goes to 1.32V which is roughly what I haved. I think this is true I confimed it by changing the duty cycle and measuring the DC voltage again.

### Task 9: Measure Exponential signal



### Task 10: UART signal
### Task 11: Test yourself on the unknown signals
