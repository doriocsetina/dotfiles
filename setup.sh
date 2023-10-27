#!/bin/sh

sudo apt update
sudo apt upgrade

# basic needs

sudo apt install --no-install-recommends xorg openbox lightdm lightdm-gtk-greeter obconf firefox tint2 rofi pcmanfm alsa-utils telegram-desktop network-manager-gnome compton feh nitrogen scrot  xfce4-power-manager

# graphic stuff

git clone https://github.com/addy-dclxvi/openbox-theme-collections ~/.themes

sudo add-apt-repository ppa:papirus/papirus
sudo apt install lx-appearance arc-theme papirus-icon-theme

