FROM curlimages/curl:latest
RUN chmod +x entrypoint.sh
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
