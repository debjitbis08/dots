#!/bin/bash

./brew.sh

# Haskell setup
curl -sSL https://get.haskellstack.org/ | sh
stack install ghc-mod
