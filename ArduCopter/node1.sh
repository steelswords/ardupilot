#!/bin/bash
if [[ $# -gt 1 ]]
then
  echo "Usage: $0 <Location name>"
  exit 1
fi

set -ue -o pipefail

location="${1-Usuquad1}"
echo "Starting at $location"

#MAPSERVER=MicrosoftHybrid sim_vehicle.py -L "$location" -w -m --out=udp:10.153.215.130:15501 --out=udp:10.153.215.130:15502 --out=udp:localhost:14560 -I 1 --sysid=1 -M
# Good still, disabling for gimbal HIL sim:
#MAPSERVER=MicrosoftHybrid sim_vehicle.py -L "$location" -m --out=udp:10.153.215.130:15501 --out=udp:10.153.215.130:15502 --out=udp:localhost:14560 -I 1 --sysid=1 -M
MAPSERVER=MicrosoftHybrid sim_vehicle.py -L "$location" -m --out=udp:10.153.215.130:15501 -I 1 --sysid=1 -M
