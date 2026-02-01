#!/bin/bash

dir=$(dirname $0)

PARALLEL=0

# Parse command line arguments
while getopts "p" opt; do
    case $opt in
        p) PARALLEL=1 ;;
        *) echo "Usage: $0 [-p]" >&2
           exit 1 ;;
    esac
done

# Ensure buildx builder exists and is active
docker buildx create --name multiarch --driver docker-container --use 2>/dev/null || docker buildx use multiarch

for release in bookworm trixie ; do
    # --platform linux/amd64,linux/arm64 to create a multi-arch image
    cmd=(docker buildx build \
        -t haggaie/texlive:$release \
        --build-arg RELEASE=$release \
        -f "$dir/Dockerfile" \
        --load \
        "$dir")
    if [ $PARALLEL -eq 1 ]; then
        "${cmd[@]}" &
    else
        "${cmd[@]}"
    fi
done

if [ $PARALLEL -eq 1 ]; then
    wait
fi

# Tag bookworm as latest
docker tag haggaie/texlive:trixie haggaie/texlive:latest