#!/bin/bash

# This shell script is for Arch Linux

# Install package from offical repository
sudo pacman -S git xorg-server sddm i3-wm alacritty rofi i3blocks \
     thunar ranger highlight mediainfo poppler python-chardet neovim feh \
     fcitx fcitx-chewing fcitx-configtool \
     ttf-liberation ttf-arphic-ukai noto-fonts noto-fonts-cjk xss-lock xorg-xrandr arandr networkmanager\
     pulseaudio pulseaudio-alsa alsa-utils pavucontrol \
     code llpp glances flameshot

# Update font cache
fc-cache -fv

# Install packages from AUR
mkdir -p $HOME/aur/
function install_aur(){
    orgiPath=$(pwd)
    cd $HOME/aur/
    echo Installing AUR $1
    git clone "https://aur.archlinux.org/$1.git"
    cd $1
    makepkg -si
    cd $orgiPath
}

install_aur archlinux-themes-sddm
install_aur google-chrome
install_aur otf-source-han-code-jp
install_aur ttf-font-awesome-4
install_aur i3lock-fancy-rapid-git
install_aur networkmanager-dmenu-git
install_aur ttf-tw
install_aur go-for-it
install_aur brillo

#Install i3blocks-contrib
orgiPath=$(pwd)
cd $HOME/aur/
git clone https://github.com/vivien/i3blocks-contrib.git
cd i3blocks-contrib
make
make install #Install to ~/.local/libexec/i3blocks
sudo pacman -S acpi #Dependency of battery2
sudo pacman -S sysstate #Dependency of cpu_usage
sudo pacman -S yad xdotool #Dependency of clander
cd $orgiPath
cp ./i3blocks/calender $HOME/.local/libexec/i3blocks/clander
chmod +x $HOME/.local/libexec/i3blocks/clander
cd $orgiPath

# Copy config file
# COnfiguration of i3
mkdir -p $HOME/.config/i3
cp ./i3/* $HOME/.config/i3

# Configuration of i3blocks
mkdir -p $HOME/.config/i3blocks
cp ./i3blocks/config $HOME/.config/i3blocks/

# Configuration of alacritty
mkdir -p $HOME/.config/alacritty
cp ./alacritty/* $HOME/.config/alacritty/

# Configuration of rofi
mkdir -p $HOME/.config/rofi
cp ./rofi/* $HOME/.config/rofi/

# Configuration of networkmanager-dmenu
mkdir -p $HOME/.config/networkmanager-dmenu
cp ./networkmanager-dmenu/* $HOME/.config/networkmanager-dmenu/

# Configuration of SDDM
sudo mkdir -p /etc/sddm.conf.d/
sudo cp ./sddm/* /etc/sddm.conf.d/

# Set the input method
cp ./.xprofile $HOME/.xprofile

# Copy the font alias
mkdir -p $HOME/.fonts.conf.d/
cp ./30-cjk-aliases.conf $HOME/.fonts.conf.d/

# Grant the permission of brightness adjustment to video group
sudo cp ./backlight.rules /etc/rules.d/backlight.rules
# Add current user to video group in order to adjuest brightness
sudo usermod --append -G video $USER

# Replace the icon of fcitx-chewing
sudo cp ./fcitx-chewing/chewing.png /usr/share/fcitx/imicon/chewing.png
sudo cp ./fcitx-chewing/chewing.png /usr/share/fcitx/skin/dark/chewing.png
sudo cp ./fcitx-chewing/chewing.png /usr/share/fcitx/skin/classic/chewing.png
sudo cp ./fcitx-chewing/chewing.png /usr/share/fcitx/skin/default/chewing.png
sudo cp ./fcitx-chewing/chewing.png /usr/share/icons/hicolor/48x48/apps/fcitx-chewing.png

# Start deamon
sudo systemctl enable sddm
sudo systemctl start sddm
