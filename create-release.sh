#! /usr/bin/env bash
set -exu

tag="$1"

for os in linux darwin; do
    for arch in amd64 arm64; do
        echo "test-${tag}-${os}-${arch}" > "test-${os}-${arch}"
    done
done

gh release create "$tag" test-*
