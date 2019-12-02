#!/bin/bash

sudo apt install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo apt install fish
chsh -s `which fish`

curl -L https://get.oh-my.fish | fish
omf install bobthefish
sudo apt-get install fonts-powerline

curl -sfL https://git.io/fundle-install | fish
fundle install

curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

# ./brew.sh

# Haskell setup
curl -sSL https://get.haskellstack.org/ | sh
stack install ghc-mod
