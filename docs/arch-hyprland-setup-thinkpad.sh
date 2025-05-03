#! /bin/sh

# Start the script from home:
cd $HOME
mkdir ~/.config

# Install required drivers for intel intel gpu:
sudo pacman -S mesa intel-media-driver


# Fonts:
sudo pacman -S noto-fonts-{cjk,emoji,extra}
sudo pacman -S ttf-firacode-nerd


# Terminal:
sudo pacman -S kitty

# Install hypr ecosystems:
sudo pacman -S hyprland hyprpaper hypridle hyprlock hyprpolkitagent

# Sound and brightness:
sudo pacman -S brightnessctl

# Browser:
sudo pacman -S firefox  # Extension: ublock-origin


# Cli tools, firmware-updaters:
sudo pacman -S pacman-contrib tree git fwupd 
