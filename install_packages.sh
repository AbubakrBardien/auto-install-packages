#!/bin/bash

pacman -S --noconfirm $(cat pacman_packages.txt)

# Assuming "/home/abubakr" is the home directory
mkdir /home/abubakr/External_Repos/
cd /home/abubakr/External_Repos/
git clone https://aur.archlinux.org/yay-bin.git 
cd yay-bin/
makepkg -si

# I don't know how to skip past the confirmation prompts yet.
yay -S $(cat aur_packages.txt) 
