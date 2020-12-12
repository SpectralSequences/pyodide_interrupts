#!/bin/bash
if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi
docker run -i -t -v `pwd`:/io quay.io/pypa/manylinux1_x86_64 /io/_docker_build_wheels.sh
