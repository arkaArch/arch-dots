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
ln -svf ~/arch-dots/hyprconfs/kitty/ ~/.config/


# Install hypr ecosystems:
sudo pacman -S hyprland hyprpaper hypridle hyprlock hyprpolkitagent waybar wofi
ln -svf ~/arch-dots/hyprconfs/hypr/ ~/.config/
ln -svf ~/arch-dots/hyprconfs/waybar/ ~/.config/
ln -svf ~/arch-dots/hyprconfs/wofi/ ~/.config/

# Sound and brightness:
sudo pacman -S pipewire wireplumber sof-firmware pipewire-audio pipewire-pulse brightnessctl


# File manager:
sudo pacman -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide imagemagick unzip unrar wl-clipboard
ln -sv ~/arch-dots/hyprconfs/yazi/ ~/.config/


# Notification:
sudo pacman -S libnotify mako

# Browser:
sudo pacman -S firefox  # Extension: ublock-origin


# Z-Shell with color prompt:
sudo pacman -S exa
sudo pacman -S zsh zsh-{completions,syntax-highlighting,autosuggestions}
chsh -s $(which zsh)
rm -r ~/.bash*
ln -svf ~/arch-dots/hyprconfs/zsh/.zshrc ~/.zshrc


# Cli tools, firmware-updaters:
sudo pacman -S pacman-contrib tree git openssh fwupd


# Link neovim setup:
ln -svf ~/arch-dots/nvim ~/.config
