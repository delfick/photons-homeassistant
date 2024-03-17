#!/bin/bash
set -e

if [[ "$1" = "linux/arm/v7" || "$1" = "linux/arm/v6" ]]; then
    echo "Need to build uvloop for arm because piwheels no support python 3.12 yet"
else
    exit 0
fi

apk add --no-cache git libffi-dev libressl-dev automake libtool
git clone https://github.com/MagicStack/uvloop.git /uvloop
cd /uvloop
git checkout v0.19.0
git submodule update --init
python -m venv uvloop-dev
source uvloop-dev/bin/activate
pip install setuptools>=60 wheel "Cython(>=0.29.36,<0.30.0)"
make
deactivate
pip install .
