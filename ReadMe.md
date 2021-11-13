![pcb 3D 02](https://user-images.githubusercontent.com/55367064/134765366-9d7ec94d-b5b2-4769-aba5-f603bd3f5534.png)

 &nbsp;
 
* Schematic and PCB design in [KiCad](https://www.kicad.org/)

* Hardware design in [SolidWorks](https://www.solidworks.com/domain/design-engineering)

* C++ code on [PlatformIO](https://docs.platformio.org/en/latest/what-is-platformio.html) IDE

* 3D prints [Prusa i3 MK3S+](https://www.prusa3d.com)

&nbsp;

 **ESP32 based energy monitor**

Samples voltage and current waveform at 2500 Hz.
The voltage waveform is sampled from an AC/AC 9v wallplug adapter and the current waveforms with current transformers clamped round live (or neutral) conductors.

Capacity: 240v, 3 circuits up tp 95 amps each.

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
- 12-bit [SAR ADC](https://en.wikipedia.org/wiki/Successive-approximation_ADC) up to 18 channels
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
- [CAN bus](https://en.wikipedia.org/wiki/CAN_bus) 2.0
- Infrared remote controller (TX/RX, up to 8 channels)
- Motor [PWM](https://en.wikipedia.org/wiki/Pulse-width_modulation)
- LED PWM (up to 16 channels)
- [Hall effect](https://en.wikipedia.org/wiki/Hall_effect) sensor
- Ultra low power analog pre-amplifier
- IEEE 802.11 standard security features all supported, including [WPA](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access), - [WPA2](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access), [WPA3](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access) and [WAPI](https://en.wikipedia.org/wiki/WLAN_Authentication_and_Privacy_Infrastructure)
- [Secure boot](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/security/secure-boot-v1.html)
- [Flash encryption](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/security/flash-encryption.html)
- 1024-bit [OTP](https://en.wikipedia.org/wiki/One-time_password)
- Cryptographic hardware acceleration: [AES](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard), [SHA-2](https://en.wikipedia.org/wiki/SHA-2), [RSA](https://en.wikipedia.org/wiki/RSA_(cryptosystem)), [elliptic curve cryptography (ECC)](https://en.wikipedia.org/wiki/Elliptic-curve_cryptography), [random number generator (RNG)](https://en.wikipedia.org/wiki/Random_number_generation)
- Internal [low-dropout regulator](https://en.wikipedia.org/wiki/Low-dropout_regulator)
- Individual power domain for [RTC](https://en.wikipedia.org/wiki/Real-time_clock)
- 5 μA deep sleep current
- Wake up from GPIO interrupt, timer, ADC measurements, capacitive touch sensor interrupt

&nbsp;

**PCB:**

- CAD: [KiCad](https://www.kicad.org/)
- Production: [JLCPCB](https://jlcpcb.com/)

![pcb 3D](https://user-images.githubusercontent.com/55367064/134765175-a1293b8c-6901-44e7-b8c2-638fda9a009c.png)

board

<img width="462" alt="board" src="https://user-images.githubusercontent.com/55367064/134846550-12b567bc-c7e9-418f-96ce-015fa439d6dc.PNG">

GndA

<img width="462" alt="PCB_GNDA" src="https://user-images.githubusercontent.com/55367064/134846592-3d94f9c1-bd92-44a2-a5b3-03a1285a8dca.PNG">

Gnd

<img width="462" alt="PCB_GND" src="https://user-images.githubusercontent.com/55367064/134846663-1a6ab48c-fbf4-43e4-b171-447b55c6f775.PNG">

[JLCPCB](https://jlcpcb.com/)

<img width="546" alt="pcb" src="https://user-images.githubusercontent.com/55367064/134781287-d7539b4a-7ff7-4a55-a634-115ddfe522a9.png">

<img width="359" alt="Production Progress" src="https://user-images.githubusercontent.com/55367064/135005775-09162670-991e-4dd4-a174-add1f99c6730.PNG">

![20210930_182721_50%](https://user-images.githubusercontent.com/55367064/135740059-f989680b-b226-448f-8a6b-9b7ef77e1283.jpg)

![20211003_025516_50%](https://user-images.githubusercontent.com/55367064/135740446-cdcbacee-10fc-45cd-8d44-6ec0c5cb55ec.jpg)

![20211003_025620_50%](https://user-images.githubusercontent.com/55367064/135740060-621b3df0-71ce-4e49-9f18-317c5b670ef4.jpg)

&nbsp;

**Case design** (WIP):

CAD: [SolidWorks](https://www.solidworks.com/domain/design-engineering)

Slicer: [PrusaSlicer](https://www.prusa3d.com/prusaslicer/)

Printer: [Prusa i3 MK3S+](https://www.prusa3d.com)

- Material: E-DA [PLA](https://en.wikipedia.org/wiki/Polylactic_acid)
- Nozzle: 0.4mm
- Layer Height: 0.2mm
- Infill: 20% cubic
- Support: optional
- Filament: 21m, 63g
- Print Time: 5hr 48m

Dimensions (LxWxH): 110x58x35 mm


![EnergyMonitor Case v1 2 transparent](https://user-images.githubusercontent.com/55367064/135209713-dddbab0a-3f59-4c7b-b7a5-4e5c81416ba4.PNG)

![EnergyMonitor Case v1 2](https://user-images.githubusercontent.com/55367064/135209720-03665ac3-10e3-4ed1-92dd-f5c1589561a2.PNG)

![image](https://user-images.githubusercontent.com/55367064/141602946-9c5d5a18-1b7a-4854-bb3e-4be961321986.png)



