![pcb 3D 02](https://user-images.githubusercontent.com/55367064/134765366-9d7ec94d-b5b2-4769-aba5-f603bd3f5534.png)

 &nbsp;
 
 * Schematic and PCB design in [KiCad](https://www.kicad.org/)

* Hardware design in [SolidWorks](https://www.solidworks.com/domain/design-engineering)

* C++ code on [PlatformIO](https://docs.platformio.org/en/latest/what-is-platformio.html) IDE

* 3D prints [Prusa i3 MK3S+](https://www.prusa3d.com)

&nbsp;

 **ESP32 based energy monitor**

Samples voltage and current waveform at 2500 Hz.
The voltage waveform is sampled from an unloaded AC/AC 9v wallplug adapter and the current waveforms with current transformers clamped round the live (or neutral) conductors.

Intergrated into a [MQTT](https://en.wikipedia.org/wiki/MQTT) [IoT](https://en.wikipedia.org/wiki/Internet_of_things) sensor network with [Node-RED](https://nodered.org/), [InfluxDB](https://www.influxdata.com/) and [Grafana](https://grafana.com/) servers.

Uses the [EmonLib library](https://github.com/openenergymonitor/EmonLib)

[An Introduction to AC Power](https://learn.openenergymonitor.org/electricity-monitoring/ac-power-theory/introduction#an-introduction-to-ac-power)

The **ESP32** is a low-cost, low-power [system on a chip](https://en.wikipedia.org/wiki/System_on_a_chip "System on a chip") [microcontroller](https://en.wikipedia.org/wiki/Microcontroller "Microcontroller") with integrated Wi-Fi, created and developed by Espressif Systems

![image](https://user-images.githubusercontent.com/55367064/132167781-9750606c-70ef-4763-a6fa-50ad65bcf074.png)

Specification:

- Xtensa dual-core 32-bit LX6 microprocessor
- 240 MHz
- 520 KiB SRAM, 448 KiB ROM, 16 KiB SRAM in RTC
- Ultra low power co-processor
- Wi-Fi: 802.11 b/g/n
- 34 × programmable [GPIO](https://en.wikipedia.org/wiki/General-purpose_input/output)s
- 12-bit SAR [ADC](https://en.wikipedia.org/wiki/Analog-to-digital_converter) up to 18 channels
- 2 × 8-bit [DAC](https://en.wikipedia.org/wiki/Digital-to-analog_converter)s
- 10 × touch sensors (capacitive sensing GPIOs)
- 4 × [SPI](https://en.wikipedia.org/wiki/Serial_Peripheral_Interface)
- 2 × [I²S](https://en.wikipedia.org/wiki/I%C2%B2S) interfaces
- 2 × [I²C](https://en.wikipedia.org/wiki/I%C2%B2C) interfaces
- 3 × [UART](https://en.wikipedia.org/wiki/Universal_asynchronous_receiver-transmitter)
- SD/SDIO/CE-ATA/MMC/eMMC host controller
- SDIO/SPI slave controller
- Ethernet MAC interface with dedicated DMA and IEEE 1588
- Precision Time Protocol support
- CAN bus 2.0
- Infrared remote controller (TX/RX, up to 8 channels)
- Motor [PWM](https://en.wikipedia.org/wiki/Pulse-width_modulation)
- LED PWM (up to 16 channels)
- [Hall effect](https://en.wikipedia.org/wiki/Hall_effect) sensor
- Ultra low power analog pre-amplifier
- IEEE 802.11 standard security features all supported, including WPA, - WPA2, WPA3 and WAPI
- Secure boot
- Flash encryption
- 1024-bit [OTP](https://en.wikipedia.org/wiki/One-time_password)
- Cryptographic hardware acceleration: AES, SHA-2, RSA, elliptic curve cryptography (ECC), random number generator (RNG)
- Internal low-dropout regulator
- Individual power domain for [RTC](https://en.wikipedia.org/wiki/Real-time_clock)
- 5 μA deep sleep current
- Wake up from GPIO interrupt, timer, ADC measurements, capacitive touch sensor interrupt

&nbsp;

PCB:

![pcb 3D](https://user-images.githubusercontent.com/55367064/134765175-a1293b8c-6901-44e7-b8c2-638fda9a009c.png)

board

![board](https://user-images.githubusercontent.com/55367064/134782551-229b2f78-36bf-4632-b27a-115d49d78b70.PNG)

GndA

![PCB_GNDA](https://user-images.githubusercontent.com/55367064/134782560-b26a84cc-c740-4f06-922f-aebcfefaf099.PNG)

Gnd

![PCB_GND](https://user-images.githubusercontent.com/55367064/134782573-17bbd3be-62b0-4b7b-ba2d-57b01e19c491.PNG)

[JLCPCB](https://jlcpcb.com/) Fabrication

<img width="546" alt="pcb" src="https://user-images.githubusercontent.com/55367064/134781287-d7539b4a-7ff7-4a55-a634-115ddfe522a9.png">

<img width="542" alt="pcb_bottom" src="https://user-images.githubusercontent.com/55367064/134781386-7f726a76-0ca0-4074-8028-04143be2370b.png">

<img width="370" alt="Production Progress" src="https://user-images.githubusercontent.com/55367064/134845648-1091badc-7490-4457-b880-18e126820f24.PNG">

&nbsp;

Case design (WIP):
