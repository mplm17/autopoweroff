FROM curlimages/curl:latest
USER root
COPY --chmod=755 "autopoweroff.sh" "/autopoweroff.sh"
COPY --chmod=755 "entrypoint.sh" "/entrypoint.sh"
RUN touch /autopoweroff.log
ENTRYPOINT ["/entrypoint.sh"] CMD crond && sleep infinity

