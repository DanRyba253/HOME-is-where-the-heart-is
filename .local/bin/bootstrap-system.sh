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

# disable debug packages
sudo sed -i '/^OPTIONS/s/debug/!debug/' /etc/makepkg.conf

#remove yay-debug package
sudo pacman -R yay-debug

# install AUR packages
yay -S --editmenu $(sed '/yay/d' .aurpkglist)

# change the shell
chsh

# enable crond service
sudo systemctl enable --now cronie
