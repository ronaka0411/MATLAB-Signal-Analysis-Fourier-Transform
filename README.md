# MATLAB-Signal-Analysis-Fourier-Transform
Lets Start with Nobel words of Mr. Fourier: "Every signal can be represented as a sum of weighted complex exponentials."
MATLAB FFT (https://www.mathworks.com/help/matlab/ref/fft.html) function used for finding unknown signal frequency(s)
We have taken a random signal (unknown frequency), for simulation with 1500 Hz frequency. It is sampled at frequency which is 10 times larger than the signal's frequency.
The code runs and takes the unknown signals data points as input (you must know everything is digital/ discrete in matlab, you cannot create a real world signal/analog signal in matlab).
And after using the FFT command, it converts the data points into complex values. 
The real part represents the magnitude of that sample and imaginary part represents the phase of that sample.
These samples are nothing but different frequencies.
How do we interprete these frequencies? Now comes into the picture important parameter RESOLUTION of signal, which is given as sampling frequency / number of samples.
Each sample point in FFT represent a resolution(R). For example first sample is at position 2nd (second figure in the result image), because we do not have anything at the 0 frequency (imaginary concept).
Signal Analysis: To find out which frequency component contributes maximum to the given signal, find the peak which is at 16th positions, thus maximum frequency of the unknown signal is (15 * RESOLUTION) here in reuslts we get RESOLUTION of ~100, thus maximum frequency of signal is 1500 Hz. Henced the topic. 
