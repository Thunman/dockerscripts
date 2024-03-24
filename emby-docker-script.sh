docker run -d \
--name emby \
--volume /config-files/emby:/config \
--volume /HDDs/1TB/dls:/mnt/1TB \
--volume /HDDs/500GB/dls:/mnt/500GB \
--network my-net \
--device /dev/dri:/dev/dri \
--gpus all \
--publish 8096:8096 \
--publish 8920:8920 \
--env UID=1000 \
--env GID=100 \
--env GIDLIST=100 \
--restart on-failure \
emby/embyserver:latest