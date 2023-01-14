FROM curlimages/curl:latest
ENTRYPOINT exec curl http://127.0.0.1:32400/status/sessions?X-Plex-Token=EbZKFijcHhhnz2P783YW -f -s 
