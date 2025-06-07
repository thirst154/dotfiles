#!/usr/bin/env bash

set -e
pushd ~/dotfiles/nix/
nvim laptop.nix
alejandra . &>/dev/null
git diff -U0 *.nix
echo "NixOS Rebuliding"
sudo nixos-rebuild switch &>nixos-switch.log || (
    cat nixos-switch.log | grep --color error && false)
gen=$(nixos-rebuild list-generations | grep current)
git comit-am "$gen"
popd