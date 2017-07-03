#!/bin/bash
PACKAGE="bash"

SERVERS="VAC GW GW2 VAC2 NAS VIR1 VIR2 VIR3 VIR4 VIR5 VIR6 VIR7 VIR8 \
VIR10 VIR11 VIR12 VIR13 VIR14 VIR15 VIR16"



for SRVR in $(echo $SERVERS)
do
  echo "Gathering info on  $SRVR"
  if [ "$SRVR" = "VAC" ] ; then
        hostname
        uptime
  else
        ssh $SRVR "bash -ic 'hostname'"
        ssh $SRVR "bash -ic 'uptime'"
  fi
done