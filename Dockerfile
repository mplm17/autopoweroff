FROM curlimages/curl:latest
ENTRYPOINT exec curl http://plex:32400/status/sessions?X-Plex-Token=EbZKFijcHhhnz2P783YW -f -s | grep "<MediaContainer" | grep -o "\".*\"" | tr -d '"'
