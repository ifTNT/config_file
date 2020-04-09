#!/bin/bash

#Install i3blocks-contrib
git clone https://github.com/vivien/i3blocks-contrib.git
cd i3blocks-contrib
make
make install #Install to ~/.local/libexec/i3blocks
sudo pacman -S acpi #Dependency of battery2
sudo pacman -S sysstate #Dependency of cpu_usage

