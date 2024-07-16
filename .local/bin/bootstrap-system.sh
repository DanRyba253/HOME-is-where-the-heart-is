#!/bin/bash

# install native packages
sudo pacman -S --needed $(cat .pkglist)

# install yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
rm -rf yay

# install AUR packages
yay -S --editmenu $(sed '/yay/d' .aurpkglist)

# change the shell
chsh

# enable crond service
sudo systemctl enable --now cronie

# enable bluetooth service
sudo systemctl enable --now bluetooth
