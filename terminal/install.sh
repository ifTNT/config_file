#!/bin/bash

# This shell script is for Arch Linux

# install packages
sudo pacman -S zsh zsh-complerions \
	       tmux screen ranger bat \
	       networkmanager glances \
	       man-db man-pages \
       	       docker docker-compose

# Install packages from AUR
mkdir -p $HOME/aur/
function install_aur(){
    cd $HOME/aur/
    echo Installing AUR $1
    git clone "https://aur.archlinux.org/$1.git"
    cd $1
    makepkg -si
}

install_aur oh-my-zsh-git
install_aur nvm

# Change shell for current user
chsh -s /bin/zsh $USER 

# Add current user to wheel and docker
sudo groupadd docker
sudo usermod -a -G wheel $USER
sudo usermod -a -G docker $USER

# Enable daemon
sudo systemctl enable NetworkManager
sudo systemctl enable docker
sudo systemctl start NetworkManager
sudo systemctl start docker

# Copy configuration file
cp ./.zshrc $HOME/.zshrc
cp ./zsh-theme/ys.custom.zsh-theme /usr/share/oh-my-zsh/custom
