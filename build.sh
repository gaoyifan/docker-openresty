docker build \
    --build-arg=RESTY_J=16 \
    -f alpine/Dockerfile \
    -t gaoyifan/openresty:light-radius .
docker build \
    --build-arg=RESTY_IMAGE_BASE=gaoyifan/openresty \
    --build-arg=RESTY_IMAGE_TAG=light \
    -f alpine/Dockerfile.fat \
    -t gaoyifan/openresty:light-fat-radius .
