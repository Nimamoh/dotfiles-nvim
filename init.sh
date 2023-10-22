#!/usr/bin/env bash

cd .binaries || exit 1
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
cd ..
ln -s .binaries/nvim-linux64 nvim-vscode
