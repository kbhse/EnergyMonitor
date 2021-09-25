![pcb 3D 02](https://user-images.githubusercontent.com/55367064/134765160-7b29ae4b-7af9-4fbc-8f79-2c533ae43f27.png)

 &nbsp;
 
 * Schematic and PCB design in [KiCad](https://www.kicad.org/)

* Hardware design in [SolidWorks](https://www.solidworks.com/domain/design-engineering)

* C++ code on [PlatformIO](https://docs.platformio.org/en/latest/what-is-platformio.html) IDE

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

Case designs (WIP):

&nbsp;

PCB (WIP):

![pcb 3D](https://user-images.githubusercontent.com/55367064/134765175-a1293b8c-6901-44e7-b8c2-638fda9a009c.png)

board

<img width="679" alt="board" src="https://user-images.githubusercontent.com/55367064/134617029-3283c84b-5ee3-41d7-9de8-295b7c8eea00.PNG">

GndA

<img width="691" alt="PCB_GNDA" src="https://user-images.githubusercontent.com/55367064/134617094-71187e13-d7b2-4a73-8892-db162916974a.PNG">

Gnd

<img width="670" alt="PCB_GND" src="https://user-images.githubusercontent.com/55367064/134617065-22ea871d-b3a8-47aa-9c33-8f1acb50483e.PNG">

VDD

<img width="685" alt="PCB_VDD" src="https://user-images.githubusercontent.com/55367064/134617104-27970951-2c84-4b43-ae67-7691dbb59502.PNG">
