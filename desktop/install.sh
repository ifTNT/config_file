#!/bin/bash

# This shell script is for Arch Linux

# Install package from offical repository
sudo pacman -S git xorg-server sddm i3-wm alacritty rofi i3blocks \
     thunar ranger highlight mediainfo poppler python-chardet neovim feh \
     fcitx fcitx-chewing fcitx-configtool \
     ttf-font-awesome xss-lock xorg-xrandr arandr networkmanager\
     code llpp glances flameshot

# Install packages from AUR
mkdir -p $HOME/aur/
function install_aur(){
    cd $HOME/aur/
    echo Installing AUR $1
    git clone "https://aur.archlinux.org/$1.git"
    cd $1
    makepkg -si
}

install_aur archlinux-themes-sddm
install_aur google-chrome
install_aur otf-source-han-code-jp
install_aur i3lock-fancy-rapid
install_aur networkmanager-dmenu

#Install i3blocks-contrib
git clone https://github.com/vivien/i3blocks-contrib.git
cd i3blocks-contrib
make
make install #Install to ~/.local/libexec/i3blocks
sudo pacman -S acpi #Dependency of battery2
sudo pacman -S sysstate #Dependency of cpu_usage

# Copy config file
mkdir -p $HOME/.config/i3
cp ./i3/* $HOME/.config/i3

mkdir -p $HOME/.config/i3block
cp ./i3block/* $HOME/.config/i3block/

mkdir -p $HOME/.config/alacritty
cp ./alacritty/* $HOME/.config/alacritty/

mkdir -p $HOME/.config/rofi
cp ./rofi/* $HOME/.config/rofi/

mkdir -p $HOME/.config/networkmanager-dmenu
cp ./networkmanager-dmenu/* $HOME/.config/networkmanager-dmenu/

mkdir -p /etc/sddm.conf.d/
cp ./sddm/* /etc/sddm.conf.d/

# Replace the icon of fcitx-chewing
sudo cp ./fcitx-chewing/chewing.png /usr/share/fcitx/imicon/chewing.png
sudo cp ./fcitx-chewing/chewing.png /usr/share/fcitx/skin/dark/chewing.png
sudo cp ./fcitx-chewing/chewing.png /usr/share/fcitx/skin/classic/chewing.png
sudo cp ./fcitx-chewing/chewing.png /usr/share/fcitx/skin/default/chewing.png
sudo cp ./fcitx-chewing/chewing.png /usr/share/icons/hicolor/48x48/apps/fcitx-chewing.png
