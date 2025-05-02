#! /bin/sh

# Start the script from home:
cd $HOME
mkdir ~/.config

# Install required drivers for intel intel gpu:
sudo pacman -S mesa intel-media-driver

# Install required xorg packages:
sudo pacman -S xorg xorg-xinit xwallpaper

# Install required headers for make suckless tools
sudo pacman -S imlib2

# Install suckless programs:
cd arch-dots/suckless/
tools=("dwm" "st" "dmenu" "dwmblocks" "slock")
for tool in ${tools[@]}; do
    cd $tool
    sudo make clean install
    cd ..
done
cd $HOME


# Fonts:
sudo pacman -S noto-fonts-{cjk,emoji,extra}
sudo pacman -S ttf-cascadia-code-nerd
ln -svf ~/arch-dots/confs/fontconfig ~/.config


# Installing file managers:
sudo pacman -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide imagemagick \
	xclip ueberzugpp udisks2 unzip unrar
ln -svf ~/arch-dots/confs/yazi ~/.config/
# Install yazi packages:
ya pack -a yazi-rs/plugins:mount
# Thunar
sudo pacman -S thunar catfish gvfs tumbler thunar-volman thunar-archive-plugin \
    thunar-media-tags-plugin file-roller poppler-glib gvfs-mtp ffmpegthumbnailer


# Sound:
sudo pacman -S pipewire pipewire-audio pipewire-alsa pipewire-pulse pamixer


# Music and video programs:
sudo pacman -S mpd ncmpcpp mpv yt-dlp
ln -svf ~/arch-dots/confs/{mpd,ncmpcpp} ~/.config
systemctl --user enable mpd
systemctl --user start mpd


# Z-Shell with color prompt:
sudo pacman -S exa
sudo pacman -S zsh zsh-{completions,syntax-highlighting,autosuggestions}
chsh -s $(which zsh)/arch-dots/confs
rm -r ~/.bash*
ln -svf ~/arch-dots/confs/zsh/.zshrc ~/.zshrc


# Notification daemon:
sudo pacman -S libnotify dunst
cp -r ~/arch-dots/icons ~/.local/share
ln -svf ~/arch-dots/confs/dunst ~/.config


# Cli tools, firmware-updaters, transmission:
sudo pacman -S pacman-contrib rsync tree git neofetch fwupd transmission-cli
ln -svf ~/arch-dots/confs/neofetch ~/.config


# Themes and icons:
sudo pacman -S lxappearance-gtk3 papirus-icon-theme
mkdir ~/.themes
tar -xf ~/arch-dots/themes/WhiteSur-Dark.tar.xz -C ~/.themes 

# Open lxappearance and change fonts, themes according to you 


# Browser:
yay librewolf-bin


# Link neovim setup:
ln -svf ~/arch-dots/nvim ~/.config


# Link .xintrc
ln -svf ~/arch-dots/confs/x/.xinitrc ~
