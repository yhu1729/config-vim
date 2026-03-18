#!/bin/bash

set -e

PATH_HERE=$(dirname $0)
cd $PATH_HERE/pack/main/start/fzf
./install --bin
