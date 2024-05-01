#!/bin/bash

# Update .pkglist & .aurpkglist

pacman -Qqen > .pkglist
pacman -Qqem > .aurpkglist
