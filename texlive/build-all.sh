#!/bin/bash

dir=$(dirname $0)

# Ensure buildx builder exists and is active
docker buildx create --name multiarch --driver docker-container --use 2>/dev/null || docker buildx use multiarch

for release in bookworm trixie ; do
    docker buildx build \
        --platform linux/amd64,linux/arm64 \
        -t haggaie/texlive:$release \
        --build-arg RELEASE=$release \
        -f $dir/Dockerfile \
        --load \
        $dir &
done

wait

# Tag bookworm as latest
docker tag haggaie/texlive:trixie haggaie/texlive:latest