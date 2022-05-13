#! /usr/bin/env bash
set -exu

tag="$1"

for os in linux darwin; do
    for arch in amd64 arm64; do
        name="test-${tag}-${os}-${arch}"
        echo "${name}" > "${name}"
        tar -czvf "${name}.tgz" "${name}"
    done
done

gh release create "$tag" test-*
