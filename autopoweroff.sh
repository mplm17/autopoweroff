#!/bin/sh
echo "test"
date +"%T"
curl http://${PLEX_HOSTNAME}:32400/status/sessions?X-Plex-Token=${PLEX_TOKEN}  -f -s | grep "<MediaContainer" | grep -o "\".*\"" | tr -d '"'
${whoami}
sleep 10
date +"%T"
