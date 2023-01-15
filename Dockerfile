FROM curlimages/curl:latest
COPY --chmod=755 "autopoweroff.sh" "/autopoweroff.sh"
COPY --chmod=755 "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
