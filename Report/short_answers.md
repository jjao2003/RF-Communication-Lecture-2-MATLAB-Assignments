# RF Assignment Short Answers

## A1: FFT Analysis
The FFT plot clearly shows four distinct peaks at **500, 600, 700, and 800 Hz**. These correspond exactly to the frequency components defined in the $V_{in}(t)$ equation.

## A2: Filtering Strategy
* **500 Hz:** Isolated using a Low Pass Filter (LPF) with a cutoff frequency of 550 Hz.
* **800 Hz:** Isolated using a High Pass Filter (HPF) with a cutoff frequency of 750 Hz.
* **600 Hz:** Isolated using a Band Pass Filter (BPF) centered at 600 Hz.

## A3: Modulation Purpose
Modulation (shifting from baseband to passband) is essential because:
1.  **Antenna Size:** Higher frequencies allow for physically smaller antennas.
2.  **Multiplexing:** It allows multiple signals to be transmitted simultaneously over different frequency channels without interference.
