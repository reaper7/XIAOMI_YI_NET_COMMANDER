#!/bin/sh

lport=1234;
outf=/tmp/fuse_d/commands_from_app.ash;
netc=/tmp/fuse_d/SCRIPTS/netcat;

# waiting for wlan0
while [[ $(cat /sys/class/net/wlan0/operstate) != up ]] ;
do
  sleep 1
done

# start main loop
while true
do
  $netc -l -p $lport | while read line
  do
    if [[ "$line" == 'quit' ]]; then
      break
    fi
    while [ -s $outf ] ;
    do
      sleep 1
    done
    echo $line > $outf
  done
done
