# XIAOMI_YI_NET_COMMANDER
XIAOMI YI NETWORK COMMANDER

This is a simple network listen script, using netcat,<br />
which receives commands from network port (in this example on port 1234)<br />
and copy it to file /tmp/fuse_d/commands_from_app.ash<br />
(based on information from AirKite member:<br />https://dashcamtalk.com/forum/threads/xiaomi-yi-share-your-scripts-and-settings.12707/page-11#post-214957 )

Unfortunately built-in netcat not functioning properly and closed connection when external client trying connect,<br />
for this reason I include full netcat inside SCRIPTS folder<br /><br />

You can send via tcp connection any command accepted by .ash script eg.:<br />
t pwm 1 enable + LF CHAR
<br />
This is another and alternative method for sending commands to commands_from_app.ash<br />
instead sending the entire commands_from_app.ash file via ftp<br />
and can be used with arduino/esp8266 etc
