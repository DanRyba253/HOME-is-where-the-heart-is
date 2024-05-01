#!/bin/bash

# install native packages
sudo pacman -S (cat .pkglist)

# install AUR packages
yay -S --editmenu (sed '/yay/d' .aurpkglist)

# change the shell
sudo chsh (which fish)

# add local binaries to PATH
fish_add_path ~/.local/bin

# enable crond service
sudo systemctl enable --now crond

