#!/bin/bash

docker run -d \
--name home-proxy \
--network my-net \
--restart=unless-stopped \
-p 443:443 \
-v ~/.ssl:/etc/nginx/ssl:ro \
-v /var/run/docker.sock:/tmp/docker.sock:ro \
-v ~/config-files/nginx/nginx.conf:/etc/nginx/nginx.conf:ro \
nginx
