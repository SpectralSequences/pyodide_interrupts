#!/bin/bash
mkdir ~/temp
cd ~/temp
export PIP_DISABLE_PIP_VERSION_CHECK=1
# Build for all python 3.x versions
ls -d /opt/python/*3* | sed -e "s^.*^\0/bin/pip wheel /io/^" | bash
ls *.whl | sed -e "s^.*^auditwheel repair \0^" | bash
mkdir -p /io/dist/
cp wheelhouse/*.whl /io/dist/