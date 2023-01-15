#!/bin/sh
echo "################################"
echo "Starting autopoweroff script."
echo "################################"
echo "Variables:"
echo "PLEX_HOSTNAME=${PLEX_HOSTNAME}"
echo "PLEX_TOKEN=${PLEX_TOKEN}"
echo "CRON_EXPRESSION=${CRON_EXPRESSION}"
echo "${CRON_EXPRESSION} /autopoweroff.sh" | crontab -u $(whoami) -
