#!/bin/bash
echo "################################"
echo "Starting autopoweroff container."
echo "################################"
echo "Environment variables:"
echo "PLEX_HOSTNAME=${PLEX_HOSTNAME}"
echo "PLEX_TOKEN=${PLEX_TOKEN}"
echo "CRON_EXPRESSION=${CRON_EXPRESSION}"
echo "DEADLINE=${DEADLINE}"
echo "################################"
printenv > /var/spool/cron/crontabs/root
echo "${CRON_EXPRESSION} /autopoweroff.sh >> /autopoweroff.log 2>&1" >> /var/spool/cron/crontabs/root
crontab /var/spool/cron/crontabs/root
exec bash -c "cron && tail -F /autopoweroff.log"
