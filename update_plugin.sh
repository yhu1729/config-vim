#!/bin/bash

set -e

cd ~/.config/vim/pack/main/start/
for repo in ./*/; do
  cd ${repo}
  git pull
  cd -
done

cd $HOME/.config/vim/pack/main/start/fzf/
./install --bin
