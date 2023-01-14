FROM curlimages/curl:latest
ENTRYPOINT exec curl http://${HOSTNAME}:32400/status/sessions?X-Plex-Token=EbZKFijcHhhnz2P783YW
