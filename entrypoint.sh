#!/bin/sh
echo "################################"
echo "Starting autopoweroff script."
echo "################################"
echo "Environment variables:"
echo "PLEX_HOSTNAME=${PLEX_HOSTNAME}"
echo "PLEX_TOKEN=${PLEX_TOKEN}"
echo "CRON_EXPRESSION=${CRON_EXPRESSION}"
echo "################################"
exec /autopoweroff.sh
