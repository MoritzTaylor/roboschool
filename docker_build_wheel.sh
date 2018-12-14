#!/bin/bash
set -ex
apt-get update && apt-get install -y libgl1-mesa-dev qtbase5-dev libqt5opengl5-dev libassimp-dev

cd $(dirname "$0")
. ./exports.sh
./install_prereq.sh

pip wheel --no-deps -w /io/wheelhouse .


