
#include <Arduino.h>
#include "SimpleTimer.h"                                            // https://playground.arduino.cc/Code/SimpleTimer/ https://github.com/marcelloromani/arduino/tree/master/SimpleTimer
#include "EmonLib.h"                                                // https://github.com/openenergymonitor/EmonLib
#include <driver/adc.h>                                             // for ESP32

#include "config.h"
#include "WiFiMQTT.h"



// ------------------------------------------------------------------
// Instantiate Objects
        
WiFiClient PUB_SUB_CLIENT;
PubSubClient client(PUB_SUB_CLIENT);
SimpleTimer timer;
//EnergyMonitor emon1;
EnergyMonitor ct1, ct2, ct3;                                           //  3 current transformers

// ------------------------------------------------------------------
// globals
long updateFreq = 1000;                                                      // DEFAULT update frequency for sensors and publish to MQTT (milliseconds)
int timerID;
bool restartFlg;                                                             // used to flag restarts so reconnect() will publish notification of restart to MQTT topic /sysMessage
long lastMqttReconnectAttempt = 0;

//boolean CT1, CT2, CT3, CT4, ACAC;                // flags
uint8_t CT_count = 0;                            // count number of CT sensors connected


// ------------------------------------------------------------------
void setup()
    {

    Serial.begin(115200);
    //#ifdef DEBUG_OUT
        Serial.printf("\n\n%s_%s, %s, %s, %s, %s\n\n", PROGNAM, VERSION, AUTHOR, CREATION_DATE, MQTT_DEVICE, MQTT_LOCATION);
    //#endif

    pinMode(onboardLED, OUTPUT);

    
    // https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-reference/peripherals/adc.html
    adc1_config_channel_atten(ADC1_CHANNEL_4, ADC_ATTEN_DB_11);
    adc1_config_channel_atten(ADC1_CHANNEL_5, ADC_ATTEN_DB_11);
    adc1_config_channel_atten(ADC1_CHANNEL_6, ADC_ATTEN_DB_11);
    adc1_config_channel_atten(ADC1_CHANNEL_7, ADC_ATTEN_DB_11);
    
    analogReadResolution(10);

    // Initialize emon library
    // set parameters for EmonLib objects
    //emon1.current(ADC_INPUT, CALIBRATION);

    //CT1.burden22Cal = 90.9;             // turnsRatio / burden resistance

    // set parameters for EmonLib objects
    //ct1.current(ADC1, CALIBRATION_1);

    // check where CT sensors are connected

    delay(1000);

    Serial.print("CT1_PIN :"); Serial.println(analogRead(CT1_PIN));
    Serial.print("CT2_PIN :"); Serial.println(analogRead(CT2_PIN));
    Serial.print("CT3_PIN :"); Serial.println(analogRead(CT3_PIN));

    if (analogRead(CT1_PIN) > 0) {CT1 = 1; CT_count++;} else CT1 = 0;          // check to see if CT is connected to CT1 input, if so enable that channel
    if (analogRead(CT2_PIN) > 0) {CT2 = 1; CT_count++;} else CT2 = 0;          // check to see if CT is connected to CT2 input, if so enable that channel
    if (analogRead(CT3_PIN) > 0) {CT3 = 1; CT_count++;} else CT3 = 0;          // check to see if CT is connected to CT3 input, if so enable that channel
    if (CT_count == 0) CT1=1;                                                  // If no CT's are connect ed CT1-4 then by default read from CT1
    
    // Calculate if there is an AC-AC adapter on analog input AVC_PIN
    double vrms = calc_rms(ACV_PIN, 1780) * (Vcal * (3.3/1024) );
    if (vrms > 90) ACAC = 1; else ACAC = 0;                                    // set flag
    if (ACAC)                                       // indicate AC has been detected by flashing LED 10 times
        {
        for (int i = 0; i < 10; i++)                                           
            {
            digitalWrite(onboardLED, HIGH);
            delay(200);
            digitalWrite(onboardLED, LOW);
            delay(300);
            }
        }
    else                                             // indicate DC power has been detected by turing LED on then off
        {
        delay(1000);
        digitalWrite(onboardLED, HIGH);
        delay(2000);
        digitalWrite(onboardLED, LOW);    
        }
    
    // debug output
    #ifdef DEBUG_OUT
        Serial.print("CT 1 Cal "); Serial.println(Ical1);
        Serial.print("CT 2 Cal "); Serial.println(Ical2);
        Serial.print("CT 3 Cal "); Serial.println(Ical3);

        Serial.println("RMS Voltage on AC-AC is: ~");
        Serial.print(vrms, 0);
        Serial.println("V");
        if (ACAC)
            {
            Serial.println("Real Power measurement enabled");
            }
        Serial.print("Vcal: ");
        Serial.println(Vcal);
        Serial.print("Phase Shift: ");
        Serial.println(phase_shift);

        if (CT_count==0)
            {
            Serial.println("NO CT's detected");
            }
        else
            {
            if (CT1) Serial.println("CT 1 detected");
            if (CT2) Serial.println("CT 2 detected");
            if (CT3) Serial.println("CT 3 detected");
            }
    #endif

    // Set the pins and calibrations for the voltage and current sensors
    ct1.current(CT1_PIN, Ical1);
    ct2.current(CT2_PIN, Ical2);
    ct3.current(CT3_PIN, Ical3);
    /*if (ACAC)
        {*/
        ct1.voltage(ACV_PIN, Vcal, phase_shift);
        ct2.voltage(ACV_PIN, Vcal, phase_shift);
        ct3.voltage(ACV_PIN, Vcal, phase_shift);
        /*}*/

    /*
    pinMode(lamp, OUTPUT);                                                       // onboard LED
    #ifdef LED_STARTS_OFF
        digitalWrite(lamp, HIGH);                                                  // turn onboard LED OFF
    #endif
    */

    connect_wifi();                             // NB as non-blocking, do I need a delay here?  test it

    client.setServer(mqttServer, mqttPort);
    client.setCallback(callback);

    // start the timer
    timerID = timer.setInterval(updateFreq, readSensors);                        // every x milliseconds, send data to MQTT

    id();

    restartFlg = true;

    }

// ------------------------------------------------------------------
void loop()
    {

    // non-blocking MQTT connection/reconnection                                 https://github.com/knolleary/pubsubclient/blob/master/examples/mqtt_reconnect_nonblocking/mqtt_reconnect_nonblocking.ino
    if (!client.connected())
        {
        // MQTT client is not connected
        long now = millis();
        if (now - lastMqttReconnectAttempt > 10000)                                // every 10 seconds
            {
            lastMqttReconnectAttempt = now;
            if (reconnect())                                                       // Attempt to reconnect
                {
                // 
                lastMqttReconnectAttempt = 0;
                }
            }
        }
    else
        {
        // MQTT client is connected
        client.loop();
        }

    timer.run();

    }