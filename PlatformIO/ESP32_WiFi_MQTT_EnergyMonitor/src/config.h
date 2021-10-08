/* config.h */

#ifndef CONFIG_H   /* include guards */
#define CONFIG_H

    #include <Arduino.h>
    #include "credentials.h"

    #define PROGNAM "ESP32_WiFi_MQTT_ENERGYMONITOR"                                                     // program name
    #define VERSION "v0.12.2"                                                                           // program version (nb lowercase 'version' is keyword)
    #define PGMFUNCT ""                                                                                 // what the program does
    #define AUTHOR "klomar"                                                                             // created by
    #define CREATION_DATE "17 August 2021"                                                              // date
    #define MODIFIED_DATE "7 October 2021"
    #define DEBUG_OUT


    // ------------------------------------------------------------------
    // 

    #define CT1_PIN 32                              // the GPIO pin where CT sensor 1 is connected (ADC1_CH5)
    #define CT2_PIN 34                              // the GPIO pin where CT sensor 2 is connected (ADC1_CH6)
    #define CT3_PIN 33                              // the GPIO pin where CT sensor 3 is connected (ADC1_CH7)
    #define ACV_PIN 35                              // the GPIO pin where ACvoltage is connected (ADC1_CH4)

    //#define ADC_INPUT 34                            // the GPIO pin where the CT sensor is connected
    #define HOME_VOLTAGE 243                        // the house voltage
    #define CALIBRATION 34                          // the calibration number for the SCT-013-030 Current sensor
                                                    // 1800 turns / 62 ohms = 29.03
                                                    // 34 from calibration with plug in meter and heater @ 867 watts
                                                    // and toaster (resistive load) @ 1.2kw
                                                    // void EnergyMonitor::current(unsigned int _inPinI, double _ICAL)
                                                    // double _ICAL so floating point
                                                    // EmonLib returns 11.25 watts at 0 load
    #define ADC_BITS    10                          // Force EmonLib to use 10bit ADC resolution
    #define ADC_COUNTS  (1<<ADC_BITS)


    boolean CT1, CT2, CT3, CT4, ACAC;                // flags

    uint8_t Vrms = 240;                             // Vrms for apparent power readings (when no AC-AC voltage sample is present)
    
    // ------------------------------------------------------------------
    // Calibrations

    const float Ical1=                34;                 // (2000 turns / 22 Ohm burden) = 90.9
    const float Ical2=                34;                 // (2000 turns / 22 Ohm burden) = 90.9
    const float Ical3=                34;                 // (2000 turns / 22 Ohm burden) = 90.9

    float Vcal=                       268.97;               // (230V x 13) / (9V x 1.2) = 276.9 Calibration for UK AC-AC adapter 77DB-06-09

    const float phase_shift=          1.7;

    const int no_of_samples=          1662;
    const int no_of_half_wavelengths= 30;
    const int timeout=                2000;                               //emonLib timeout
    const int ACAC_DETECTION_LEVEL=   3000;

    //const byte LEDpin=                 6;


    /*
    typedef struct currentTransformer
        {
        int id;
        String partNo;
        int turnsRatio;
        // calibration numbers
        float burden22Cal;             // 22 ohmn burden resistor
        float burden39Cal;             // 39 ohmn burden resistor
        float burden62Cal;             // 62 ohmn burden resistor
        float burden120Cal;            // 120 ohmn burden resistor
        } CT1, CT2, CT3;
    
    currentTransformer CT1, CT2, CT3;

    CT1.burden22Cal = 90.9;             // turnsRatio / burden resistance
    */


    // ------------------------------------------------------------------

    const int onboardLED = 2;                           // GPIO2 (blue LED)
    //long MQTTupdateFreq = 10000;                      // 1 minute (the update frequency to publish data to MQTT (milliseconds))
    //#define UPDATE_FREQ 60000L                        // 60 seconds

    // ------------------------------------------------------------------
    // MCU Hardware

    //#define MCU "ESP8266 D1 Mini"
    //#define MCU "ESP8266 D1 Mini Pro V2"
    #define MCU "ESP32 Dev board"
    //#define MCU "ESP32 D1 Mini"

    // ------------------------------------------------------------------
    // Configure MQTT
    // (unique identity for each ESP32 device)

        #define MQTT_DEVICE "esp031"                                                                       // MQTT requires unique device ID (see reconnect() function)
        #define PUB_SUB_CLIENT esp031client                                                                // and unique client ?
        #define MQTT_LOCATION "roaming31"                                                                  // location for MQTT topic

    // ------------------------------------------------------------------
    // Comment out sensors not in use

        //#define WEMOS_SHT30 "SHT30 "                                                                              // Wemos Temperature and Humidity shield
        //#define WEMOS_HP303 "HP303 "                                                                              // Wemos Barometric Pressure Shield
        //#define WEMOS_BH1750 "BH1750 "                                                                            // Wemos Ambient Light Shield
        //#define WEMOS_BATTERY "BATTERY "                                                                          // Wemos Battery Shield
        //#define WIFI_RSSI "RSSI "                                                                                 // ESP8266 WiFi RSSI
        //#define RS485_WIND "WIND "                                                                                // Anemometer and Wind Direction
        //#define CO2 "CO2 "                                                                                        // sandbox electronics CO2 sensor - NB recalibrate in fresh air regularly
        //#define ROBOTDYN_ACDIMMER "ACDIMMER "                                                                     // Robotdyn zero-crossing detector and AC dimmer module
        //#define MLX90614_IR_SENSOR "IR "                                                                          // IR temp sensor
        //#define DS18B20 "DS18B20"                                                                                 // 1-wire temperature sensor
        #define CURRENT_SENSOR                                                                                      // YHDC SCT-013 CT Sensor
        //#define ADC_TEST                                                                                          // test

/*
    // ------------------------------------------------------------------------------------------------
    // TFT pins - see README.md

        #define TFT_CS D0  //for D1 mini or TFT I2C Connector Shield (V1.1.0 or later)
        #define TFT_DC D8  //for D1 mini or TFT I2C Connector Shield (V1.1.0 or later)
        #define TFT_RST -1 //for D1 mini or TFT I2C Connector Shield (V1.1.0 or later)
        #define TS_CS D3   //for D1 mini or TFT I2C Connector Shield (V1.1.0 or later)

*/
   
#endif // CONFIG_H