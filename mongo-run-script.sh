docker run -d \
--name mongo \
-p 27017:27017 \
-v /Hdds/500GB/mongo-data:/data/db \
--restart=unless-stopped \
--network my-net \
mongo