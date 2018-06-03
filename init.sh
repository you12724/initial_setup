#!/bin/bash -x

./download.sh
./app.sh
./appstore.sh
./mac_setup.sh
cp ./.vimrc ~/.vimrc
