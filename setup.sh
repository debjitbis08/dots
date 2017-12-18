#!/bin/bash

curl -sfL https://git.io/fundle-install | fish
fundle install

curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

./brew.sh

# Haskell setup
curl -sSL https://get.haskellstack.org/ | sh
stack install ghc-mod
