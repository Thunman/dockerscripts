#!/bin/bash

docker run -d \
--name=qbittorrent \
-e PUID=1000 \
-e PGID=1000 \
-e TZ=Europe/Stockholm \
-e WEBUI_PORT=8080 \
-e TORRENTING_PORT=6881 \
-p 8080:8080 \
-p 6881:6881 \
-p 6881:6881/udp \
-v ~/config-files/qbittorrent:/config \
-v ~/HDDs/1TB/dls:/1TB/dls \
-v ~/HDDs/500GB/dls:/500GB/dls \
--network my-net \
--restart unless-stopped \
lscr.io/linuxserver/qbittorrent:latest
