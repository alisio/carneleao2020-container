#/bin/bash
dev_eth='en0'
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &
IP=`ifconfig ${dev_eth} | egrep inet | sed 's/.*inet \(.*\) netmask.*/\1/g'`
docker run  --rm \
  -e DISPLAY=${IP}:0 \
  -v ${HOME}/Documents/ProgramasRFB/LEAO2020-teste:/root/ProgramasRFB/LEAO2020 \
  alisio/carneleao2020
