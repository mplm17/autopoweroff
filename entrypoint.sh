#!/bin/sh
echo "################################"
echo "Starting autopoweroff container."
echo "################################"
echo "Environment variables:"
echo "PLEX_HOSTNAME=${PLEX_HOSTNAME}"
echo "PLEX_TOKEN=${PLEX_TOKEN}"
echo "CRON_EXPRESSION=${CRON_EXPRESSION}"
echo "################################"
echo -e "${CRON_EXPRESSION//\ /\\t}\t/autopoweroff.sh >> /autopoweroff.log 2>&1" >> /var/spool/cron/crontabs/root
exec crond && tail -F /autopoweroff.log
