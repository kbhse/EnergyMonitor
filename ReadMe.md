* Schematic and PCB design in [KiCad](https://www.kicad.org/)

* Hardware design in [SolidWorks](https://www.solidworks.com/)

* C++ code written in the [PlatformIO](https://docs.platformio.org/en/latest/what-is-platformio.html) IDE

&nbsp;

 **ESP32 based energy monitor**

Samples voltage and current waveform at 2500 Hz.
The voltage waveform is sampled from an unloaded AC/AC 9v wallplug adapter and the current waveforms with current transformers clamped round the live (or neutral) conductors.

Intergrated into a [MQTT](https://en.wikipedia.org/wiki/MQTT) [IoT](https://en.wikipedia.org/wiki/Internet_of_things) sensor network with [Node-RED](https://nodered.org/), [InfluxDB](https://www.influxdata.com/) and [Grafana](https://grafana.com/) servers.

Uses the [EmonLib library](https://github.com/openenergymonitor/EmonLib/blob/master/EmonLib.h)

[An Introduction to AC Power](https://learn.openenergymonitor.org/electricity-monitoring/ac-power-theory/introduction#an-introduction-to-ac-power)

The **ESP32** is a low-cost, low-power [system on a chip](https://en.wikipedia.org/wiki/System_on_a_chip "System on a chip") [microcontroller](https://en.wikipedia.org/wiki/Microcontroller "Microcontroller") with integrated Wi-Fi, created and developed by Espressif Systems

![image](https://user-images.githubusercontent.com/55367064/132167781-9750606c-70ef-4763-a6fa-50ad65bcf074.png)

Specification:

- Xtensa dual-core 32-bit LX6 microprocessor
- 240 MHz
- 520 KiB SRAM, 448 KiB ROM, 16 KiB SRAM in RTC
- Ultra low power co-processor
- Wi-Fi: 802.11 b/g/n
- 34 × programmable GPIOs
- 12-bit SAR ADC up to 18 channels
- 2 × 8-bit DACs
- 10 × touch sensors (capacitive sensing GPIOs)
- 4 × SPI
- 2 × I²S interfaces
- 2 × I²C interfaces
- 3 × UART
- SD/SDIO/CE-ATA/MMC/eMMC host controller
- SDIO/SPI slave controller
- Ethernet MAC interface with dedicated DMA and IEEE 1588
- Precision Time Protocol support
- CAN bus 2.0
- Infrared remote controller (TX/RX, up to 8 channels)
- Motor PWM
- LED PWM (up to 16 channels)
- Hall effect sensor
- Ultra low power analog pre-amplifier
- IEEE 802.11 standard security features all supported, including WPA, - WPA2, WPA3 and WAPI
- Secure boot
- Flash encryption
- 1024-bit OTP
- Cryptographic hardware acceleration: AES, SHA-2, RSA, elliptic curve cryptography (ECC), random number generator (RNG)
- Internal low-dropout regulator
- Individual power domain for RTC
- 5 μA deep sleep current
- Wake up from GPIO interrupt, timer, ADC measurements, capacitive touch sensor interrupt

Case designs:

![image](https://user-images.githubusercontent.com/55367064/132191737-ac75240d-4bd4-4ac8-abb8-16fea45ae91d.png)
