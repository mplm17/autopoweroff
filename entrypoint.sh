#!/bin/sh
echo "################################"
echo "Starting autopoweroff script."
echo "################################"
echo "Variables:"
echo "PLEX_HOSTNAME=${PLEX_HOSTNAME}"
echo "PLEX_TOKEN=${PLEX_TOKEN}"
echo "PLEX_TOKEN=${PLEX_TOKEN}"
exec curl http://${PLEX_HOSTNAME}:32400/status/sessions?X-Plex-Token=${PLEX_TOKEN}  -f -s | grep "<MediaContainer" | grep -o "\".*\"" | tr -d '"'
