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

| Oscilloscope measuring DC voltage |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Dcv.jpg" width="450" height="500"> |

| Voltage and measured voltages | | | | | | |
| --- | --- | --- | --- | --- | --- | --- |
| **Voltage Setting (V)** | 3.0 | 2.5 | 2.0 | 1.5 | 1.0 | 0.5 |
| **Measured Voltage Osc (V)** | 2.90 | 2.43 | 1.94 | 1.46 | 1.01 | 0.55 |
| **Measured Voltage Mult (V)** | 2.88 | 2.43 | 1.97 | 1.47 | 1.02 | 0.55 |

| Voltage setting against Measured Voltage |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Plot.png" width="600" height="500"> |

**Linear model: Vr = 0.9391*V + 0.074**

### Task 7: Measure sine wave signal

#### 2.5kHz signal
The signal seems to be offseted from the GND which is a bit weird. I did measure the maximum and minimum with the oscilloscope and obtained **2.40V** and **0.82V** respectivetly which leaves with a pk-to-pk Voltage of **1.58V** which is close enough to 1.65V. I then measure in the DC setting using the multimter and obtained **1.64V** which must be the largest positive voltage value measured. The AC measurement is **0.55V** and I am unsure what it represents. After thinking about it and doing some research I concluded that it was the rms which should be around 0.56V which it indeed was.

| Oscilloscope measuring sine wave signal 2.5kHz |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/lasine.jpg" width="450" height="500"> |

#### 100kHz signal
Using the oscilloscope I measured as minimum voltage **0.89V** the maximum **2.31V** and the pk-to-pk **1.42V** which is pretty far off from 1.65V. The DC measurement was again **1.64V** and the AC one decreased to **0.119V** which looks quite wrong.

| Oscilloscope measuring sine wave signal 100kHz |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/100k.jpg" width="450" height="500"> |

### Task 8: Measure PWN signal

The time period of the signal was **120us** which gave a frequency of **8.3kHz**. The duty cycle I think is the ratio between the duration of the positive square voltage part and the 0 region. My aproximated duty cycle was **5/12** which approximates to **42%** which is pretty close to the signal gen values. The multimeter DC measurement was **1.3V** which I think it is also involved with the duty cycle. 3.3V  is the max voltage output of the ESP32 time 0.4 goes to 1.32V which is roughly what I haved. I think this is true I confimed it by changing the duty cycle and measuring the DC voltage again.

| Oscilloscope measuring PWN signal |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Pwn.jpg" width="450" height="500"> |

### Task 9: Measure Exponential signal

I measured the time constant from the time it took to go from 0V to the maximum flat V which resulted to be **1ms** but I am confused with the m% TC setting. The frequency seemed to be right though about **50Hz**. **UPDATE** I was measuring the time constant wrong I instead use the equation V = Vc*(1-exp(-t/tau)) on the challenge which worked way better. I will update this section after using this. I tried this again and I obtained a time constant of **0.89ms** which I guess it close to 1ms but in the challenge it went better.

| Oscilloscope measuring Exponential signal |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/exp.jpg" width="450" height="500"> |

### Task 10: UART signal

#### Hashtag
I am guessing the information is being encoded into some sort of binary method I am not sure at all. With an even parity. With the odd parity the pattern remains with three peaks but different size and pattern. The no parity seems very simillar to the odd parity one. I think they are just different ways to encode the same information. **UPDATE** I went back and decoded this one I was very happy to decode it.

| Hash UART Signal (even parity) |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Hash.jpg" width="450" height="500"> |

#### ABC
The peaks have changed shape, there are still 3 and follow the same pattern as the Hashtag ones.
They just have different distributions which I am guessing are different types of encoding it.

| ABC UART Signal (even parity) |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/ABC.jpg" width="450" height="500"> |

### Task 11: Test yourself on the unknown signals

#### Signal 1
Seems to be a constant DC voltage of around **2.47V** 

| Unknown Signal 1 |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Ucon.jpg" width="450" height="500"> |

#### Signal 2
This one seemed to be a sine wave with a minimum voltage of **1.74V** and maximum voltage of **2.13V**. It has a period of **88us** hence a frequency of around **11.4kHz**. The peak to peak voltage is **0.39V**.

| Unknown Signal 2 |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/US.jpg" width="450" height="500"> |

#### Signal 3
This one seems to be a PWN signal with a time period of **74us** the positive voltage region seems to be **40us** long therefore a duty cycle of around **54%**. The frequency is around **13.51kHz**.

| Unknown Signal 3 |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Uclock.jpg" width="450" height="500"> |

#### Signal 4
This signal seemed to be a square wave with a time period of **200us** the positive volate region seems to be **170us** long therefore a duty cycle of around **85%**. The frequency is around **5kHz**.

| Unknown Signal 4 |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/UPwn.jpg" width="450" height="500"> |

#### Signal 5
I finally figured out how to measure the time constant during this exercise I used the expression V = Vc*(1-exp(-t/tau)), picked some random point on the graph and read the voltage and the time taken since V = 0. I also know that Vc is around 3.2V although it should be 3.3V. This signal was an exponential signal with a time period of **5.6ms** and a frequency of **179Hz** and a time constant of **0.276ms**.

| Unknown Signal 5 |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/Uexp.jpg" width="450" height="500"> |

#### Signal 6

At the time of the lab I had no idea how to do this, I will try do some research on decoding this UART signal but for now I will finalise this lab here. **UPDATE** After the thursday tutorial I was able to decode the 6th Signal. It said **Hello!** Which doesn't match the answer sheet. The signal has an odd parity and a 9600b/s.

I decoded it on this sequence. I tried to find recognisible sequences of bits to not loose track of position. Another tip is to look also when the start bit is continued by more 0 bits. Do not try to look for a 101 sequence. Be methodical and everytime there is a down bit start counting the data bits. Try to identify parity as well and use it to ensure you are reading the right part of the signal. (Always look for parity bit if there is one). I am very happy I managed to do this.

01101111 = o, 00100001 = !, 01001000 = H, 01100101 = e, 01101100 = l, 01101100 = l.

| Unknown Signal 6 |
| --- |
| <img src="https://github.com/BigKoala33/Electronics-Labs/blob/main/Lab%201/Images/U6.jpg" width="450" height="500"> |

## Learning Outcomes
 - I did manage to use measure AC and DC voltages using the oscilloscope and the multimeter.
 - I did manage to measure time and adjust time axis on the oscilloscope.
 - I managed to make relative measurements and use the trigger mechanism.
 - I used to scope to measure different signals.
 - I managed to decode the UART signals.
