docker run -d \
--name home-proxy \
--network my-net \
--restart=unless-stopped \
-p 443:443 \
-v /path/to/ssl:/etc/nginx/ssl:ro \
-v /var/run/docker.sock:/tmp/docker.sock:ro \
-v /config-files/nginx/nginx-server.conf:/etc/nginx/nginx.conf:ro \
nginx