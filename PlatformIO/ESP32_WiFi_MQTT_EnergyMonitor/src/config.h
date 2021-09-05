/* config.h */

#ifndef CONFIG_H   /* include guards */
#define CONFIG_H

    #include <Arduino.h>
    #include "credentials.h"

    #define PROGNAM "ESP32_WiFi_MQTT_ENERGYMONITOR"                                                     // program name
    #define VERSION "v01.12"                                                                            // program version (nb lowercase 'version' is keyword)
    #define PGMFUNCT ""                                                                                 // what the program does
    #define AUTHOR "klomar"                                                                             // created by
    #define CREATION_DATE "17 August 2021"                                                              // date
    #define MODIFIED_DATE "5 September 2021"
    #define DEBUG_OUT



    #define ADC_INPUT 34                            // the GPIO pin where the CT sensor is connected
    #define HOME_VOLTAGE 243                        // the house voltage
    #define CALIBRATION 29                          // the calibration number for the SCT-013-030 Current sensor
                                                    // 1800 turns / 62 ohms

    const int lamp = LED_BUILTIN;
    //long MQTTupdateFreq = 10000;                    // 1 minute (the update frequency to publish data to MQTT (milliseconds))
    //#define UPDATE_FREQ 60000L                      // 60 seconds

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
        #define MQTT_LOCATION "roaming31"                                                                    // location for MQTT topic

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
        #define CURRENT_SENSOR                                                                                    // YHDC SCT-013 CT Sensor
        //#define ADC_TEST                                                                                            // test

/*
    // ------------------------------------------------------------------------------------------------
    // TFT pins - see README.md

        #define TFT_CS D0  //for D1 mini or TFT I2C Connector Shield (V1.1.0 or later)
        #define TFT_DC D8  //for D1 mini or TFT I2C Connector Shield (V1.1.0 or later)
        #define TFT_RST -1 //for D1 mini or TFT I2C Connector Shield (V1.1.0 or later)
        #define TS_CS D3   //for D1 mini or TFT I2C Connector Shield (V1.1.0 or later)

*/
   
#endif // CONFIG_H