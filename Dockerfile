FROM debian:latest
USER root
RUN apt-get update && apt-get install -y \
    tzdata \
    curl \
    cron \
    && rm -rf /var/lib/apt/lists/*
COPY --chmod=755 "autopoweroff.sh" "/autopoweroff.sh"
COPY --chmod=755 "entrypoint.sh" "/entrypoint.sh"
RUN touch /autopoweroff.log
ENTRYPOINT ["/entrypoint.sh"]
