# autopoweroff

## Usage

### Docker-compose
````
  autopoweroff:
    build:
      context: https://github.com/mplm17/autopoweroff.git#main
    environment:
      - TZ=**<timezone>**
      - PLEX_HOSTNAME=**<hostname>**
      - PLEX_TOKEN=**<token>**
      - CRON_EXPRESSION=**<cron_expression>**
      - DEADLINE=**<deadline>**
    volumes:
      - /bin/systemctl:/bin/systemctl
      - /run/systemd/system:/run/systemd/system
      - /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket
      - /sys/fs/cgroup:/sys/fs/cgroup
    privileged: true
    restart: unless-stopped
````
### Example
````
  autopoweroff:
    build:
      context: https://github.com/mplm17/autopoweroff.git#main
    environment:
      - TZ=Europe/Paris
      - PLEX_HOSTNAME=example.com
      - PLEX_TOKEN=V68KF3fScBxGsp47pg42
      - CRON_EXPRESSION=*/30 3-6 * * *
      - DEADLINE=06:30
    volumes:
      - /bin/systemctl:/bin/systemctl
      - /run/systemd/system:/run/systemd/system
      - /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket
      - /sys/fs/cgroup:/sys/fs/cgroup
    privileged: true
    labels:
    restart: unless-stopped
````
