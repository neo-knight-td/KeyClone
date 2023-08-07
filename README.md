# The KeyClone Project

## Introduction

After university, I moved into a collocation with some friends. The owner had allowed me a spot in his garage to park my motorcycle. The only issue was that the garage door was controlled with an old and single remote (something of [this](https://www.remotecontrol-express.com/remote+NICE+:+FLO1+OLD) type). In order to allow both of the owner and myself to access the garage, we had to share the remote key. This was pretty annoying and unsafe. Therefore, I decided to clone the remote key using my Raspberry Pi (this was way more fun that just buying a new remote).

This project details the main steps I went thought while doing this project. It also provides the code used for cloning the garage door remote.

## Reverse engineering the old remote

I bought a small SDR (somehting of [this](https://www.amazon.com.be/-/nl/SDR-ontvanger-full-band-ontvanger-RTL-SDR-radio-gedefinieerd-communicatiesysteem/dp/B08DDDVWFD/ref=asc_df_B08DDDVWFD/?hvadid=633370450780&hvpos=&hvnetw=g&hvrand=6136675819701338683&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=20058&hvtargid=pla-1210215135834&psc=1) type) and analyzed the signal produced by the remote using [Gqrx](https://gqrx.dk/) on my Ubuntu laptop.

First step was to find out the carrier frequency. When installed close to the SDR antenna, the signal was pretty easy to spot as it produced a high and wide peak in the spectrum. I localized the signal around 30 MHz.

I could bring the signal in baseband (for further analysis) using the amplitude modulation parameter in Gqrx (the digital signal from the remote was a simple binary ASK). I recorded multiple samples of the signal and saw that everytime the same code was sent to the door. This major security breach made this project way more simple than I thought it would be.

I used audacity to determine the code sent by remote :

