Notes:

- [x] use a different library for SHT30 (with crc error checking)

- [x] make wifi and mqtt non-blocking

WiFi:

https://www.esp8266.com/viewtopic.php?p=71077

https://arduino-esp8266.readthedocs.io/en/latest/esp8266wifi/generic-examples.html

MQTT:

https://github.com/knolleary/pubsubclient/blob/master/examples/mqtt_reconnect_nonblocking/mqtt_reconnect_nonblocking.ino

3. remote reboot ESP32

4. PID control

5. sht30 sample rate & I2C speed vs cable length https://github.com/espressif/arduino-esp32/issues/1395

6. pubsub qos http://www.steves-internet-guide.com/using-arduino-pubsub-mqtt-client/

7. 06/01/21 19:00 v01.04 running

8. Sometimes getting -54 on ssrState! use boolean data type

9. if it restarts it will go back to default low and high setPoints !!! need NodeRED globals?

10. ~~do I need the wemos relay??~~

11. add remote restart via subscribe to topic ssrHeater1/restart

12. perhaps it should check for setPoints regularly (if mqtt not reliable and it doesn't update from Node-RED publish)

Don't block critical thermostat function !!

non-blocking WiFi:

If connection is established, and then lost for some reason, ESP will automatically reconnect to the last used access point once it is again back on-line. This will be done automatically by Wi-Fi library, without any user intervention.
So the old code would only be blocking on startup or restart (in setup() call to setup_wifi()) if there is no WiFi because code is waiting to report that the connection has been established.
This code: `while (WiFi.status() != WL_CONNECTED)` could loop forever if no WiFi connection established.
Don't need to report connection established so just get rid of that code.

NB test it works if ESP8266 starts up with no WiFi available. does a blink in loop work??

for an event driven solution that reports connection/disconnection without blocking critical functionality

see : https://arduino-esp8266.readthedocs.io/en/latest/esp8266wifi/readme.html#quick-start

non-blocking mqtt https://github.com/knolleary/pubsubclient/blob/master/examples/mqtt_reconnect_nonblocking/mqtt_reconnect_nonblocking.ino

ChangeLog

01.00

01.05 change default setPoints

01.06 added publish (re)start message (to track restarts) in setup()

01.07 on (re)startup (in setup()) publish request for the current setPoints but don't wait for them (non-blocking).

they will overwrite the defaults in callback() if/when messages arrive. take care in NodeRED that the values won't fail the sanity check (in callback()) which would revert to defaults!

PROBLEM WITH MQTT MULTIPLE CONNECTIONS:

change the ESP device ID

Here's how it looks:

	if (client.connect("ESP8266Client")) {

Can do it like this:

	if (client.connect("ESP1_Office")) {

Then, for the other ESP:

	if (client.connect("ESP2_Garage")) {

That should solve MQTT multiple connections problem.

- [x] If it starts without a wifi signal need code in loop() to periodically try to connect, simlar to MQTT server connection

- [x] change name from client to MQTTclient

- [ ] setup in weatherstation

- [x] callback in energy monitor

MQTT:

https://github.com/knolleary/pubsubclient

https://randomnerdtutorials.com/raspberry-pi-publishing-mqtt-messages-to-esp8266/

EmonLib:

https://savjee.be/2019/07/Home-Energy-Monitor-ESP32-CT-Sensor-Emonlib/

- [ ] grafana mqtt buttons
- [ ] calculate power factors in Node-RED instead of mcu