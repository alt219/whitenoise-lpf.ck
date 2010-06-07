/*

    whitenoise-lpf.ck  Low-pass filtered whitenoise
    Copyright (c) 2010 Ebon Elza <ebonelza@gmail.com>

*/

350 => int cutoff;  // Cutoff frequency in Hz for the low-pass filter

Noise n => LPF lpf => dac;  // Create a noise generator and
                            // route it thru a low-pass filter

cutoff => lpf.freq;  // Set the cutoff frequency of the low-pass filter

// Loop and advance time
while( true )
{
    500::ms => now;
}
