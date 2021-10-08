/* credentials.h */

#ifndef CREDENTIALS_H   /* include guards */
#define CREDENTIALS_H

    // ------------------------------------------------------------------
    // specify which WiFi network to connect to

    const char* ssid = "BTHub6-7N5K";
    const char* ssidPassword = "QeC3RCJGeUvx";

    //const char* ssid = "EXT-BTHub6-7N5K";          
    //const char* ssidPassword = "QeC3RCJGeUvx";

    //const char* ssid = "linksys";
    //const char* ssidPassword = "rhenigidale";

    //const char* ssid = "BT-HZA8HJ";                        // KBHSE
    //const char* ssidPassword = "fyurGVup6qru3H";

    // ------------------------------------------------------------------
    // specify which MQTT Server to connect to

    const char* mqttServer = "192.168.1.80";                   // Dell Inspiron
    const char* mqttUser = "mqttUser";
    const char* mqttPassword = "kP7fWB5gVA";

    //const char* mqttServer = "192.168.1.100";                // raspi03-01
    //const char* mqttUser = "mqttUser2";
    //const char* mqttPassword = "jR5b73Wklx";

    //const char* mqttServer = "192.168.1.138";                // raspi4-03
    //const char* mqttUser = "mqttUser";
    //const char* mqttPassword = "kP7fWB5gVA";

    const int mqttPort = 1883;

   // ------------------------------------------------------------------

    #endif // CREDENTIALS_H