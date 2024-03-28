#!/bin/bash

docker run -d \
--name homeassistant \
--privileged \
--restart=unless-stopped \
-e TZ=Europe/Stockholm \
-v /config-files/homeassistant:/config \
-v /run/dbus:/run/dbus:ro \
-p 8123:8123 \
--network my-net \
ghcr.io/home-assistant/home-assistant:stable
