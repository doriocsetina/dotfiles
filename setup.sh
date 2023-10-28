#!/bin/sh

sudo pacman -Syu

## graphical enviroment + utils
sudo pacman -S xorg openbox obconf lightdm lightdm-gtk-greeter neofetch gnome-terminal tint2 rofi pcmanfm alsa-utils picom feh firefox telegram-desktop scrot lxappearance pulseaudio xfce4-power-manager pasystray network-manager-applet blueman arc-gtk-theme fish cbatticon

git clone https://aur.archlinux.org/yay.git ~/Downloads/git
git clone https://github.com/adi1090x/rofi ~/Downloads/git
git clone https://github.com/addy-dclxvi/openbox-theme-collections ~/.themes

# installing yay
cd ~/Downloads/git/yay
makepkg -sirc

# installing rofi themes
cd ~/Downloads/git/rofi
./setup.sh

# installing icon theme
yay -S papirus-icon-theme-git

# copying repo files to .config
cp -rf ~/Downloads/git/dotfiles/dotconfig/tint2 ~/.config/tint2
cp -rf ~/Downloads/git/dotfiles/dotconfig/openbox ~/.config/openbox
cp -rf ~/Downloads/git/dotfiles/dotconfig/picom.conf ~/.config/picom.conf

## utilities

# enabling lightdm
sudo systemctl enable lighdm.service

# setting keymap in xorg
localectl --no-convert set-x11-keymap it

# setting fish as main shell
chsh -s $(which fish)
