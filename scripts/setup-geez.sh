#!/bin/bash

set -e

git clone https://github.com/zeal-nerd/am-geez.git
cd am-geez
sudo cp am-geez.mim /usr/share/m17n/

ibus restart
ibus-daemon -drx
