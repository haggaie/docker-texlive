#!/bin/bash

dir=$(dirname $0)

for release in buster stretch bookworm ; do
    docker build -t haggaie/texlive:$release --build-arg $release - < $dir/Dockerfile &
done

wait

docker tag haggaie/texlive:bookworm haggaie/texlive:latest