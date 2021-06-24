docker build \
    --build-arg=RESTY_J=16 \
    -f alpine/Dockerfile \
    -t gaoyifan/openresty:light .
docker build \
    --build-arg=RESTY_FAT_IMAGE_BASE=gaoyifan/openresty \
    --build-arg=RESTY_FAT_IMAGE_TAG=light \
    -f alpine/Dockerfile.fat \
    -t gaoyifan/openresty:light-fat .
