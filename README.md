# dotfiles
my personal laptop setup!
description that i will at some point finish

## installing arch
i use arch (btw) as an operating system, since i'm building a very lightweight graphical enviroment. the rest of the steps start from the moment of the first reboot.

to install arch linux refer to the [arch linux installation guide](https://wiki.archlinux.org/title/Installation_guide)

## installing graphical enviroment 
i am using xorg as a display server, openbox as a window manager, lightdm as a display manager, and picom as a compositor.

`sudo pacman -S xorg openbox obconf lightdm lightdm-gtk-greeter`

here are listed the main utilities i install immediately after, the main applications and the applets 

`sudo pacman -S neofetch gnome-terminal git tint2 rofi pcmanfm alsa-utils picom feh firefox telegram-desktop scrot lxappearance pulseaudio xfce4-power-manager pasystray network-manager-applet blueman`

once this is done it's necessary to activate the greeter with

`sudo systemctl enable lightdm.service`

now in the next reboot you're booted right into the the new graphical enviroment!!

## configuring the graphical enviroment 

### content of this repository

in this repository there are in the dotconfig folder all the files that need to go in the `~/.config` directory. inside of it there are:
- `openbox` folder contains: 
  - `autostart.sh` which is the list of commands that get executed when you enter the desktop enviroment.
  - `rc.xml` contains the configuration of openbox, mainly keybindings and a lot of other things. the keybind are explained in the `openbox setup` section!!
- `tint2` folder contains my main tint2 theme! it's a frankestain of these two repositories:
  - [addy-dclxvi/tint2-theme-collections](https://github.com/addy-dclxvi/tint2-theme-collections) - launchy (took the icons from here)
  - [Redmond-X](https://www.gnome-look.org/p/1271099/) - the rest is from here!
- `picom.conf` this is the compositor file. it's a basic example conf file but with some tweaks, like the transparency of the terminal and inactive windows - with firefox set to be always at max opacity because of readability.

so just copy these files inside of the `~/.config` folder! after it you can reboot and there's gonna be a full desktop! it's also gonna look very bad

### configuring rofi
after copying the files inside of the `~/.config` folder, i think the most important thing to do is setting up rofi. i used this repository! it's amazing and with tons of customizability: **[adi1090x/rofi](https://github.com/adi1090x/rofi)**

let's clone the repository! i usually have a folder inside of Downloads named "git" where i download repositories

`git clone https://github.com/adi1090x/rofi`

then inside of the folder you can run `./setup.sh` and everything should work! now `Super + Space` opens rofi

### installling yay

i use yay 

### downloading openbox themes
i use the themes in **[addy-dclxvi/openbox-theme-collections](https://github.com/addy-dclxvi/openbox-theme-collections)** ! they're incredibile clean. I usually use the Arc-Clone

to install it just clone the repository

`git clone https://github.com/addy-dclxvi/openbox-theme-collections ~/.themes`

and now from obconf you can set it up!

### downloading gtk theme
i use [arc-design/arc-theme](https://github.com/arc-design/arc-theme). it's possible to install with

`sudo pacman -S arc-gtk-theme`

then select it in the lxappearance menu

### downloading icon theme
i use [PapirusDevelopmentTeam/papirus-icon-theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) as my icon theme

it can be installed via the AUR

`yay -S papirus-icon-theme-git`

### installing fish
i use fish as my shell:

`sudo pacman -S fish`

set is as the main shell with

`chsh -s $(which fish)`

## openbox shortcuts
in the `rc.xml` file there are a few tweaks that made the window manager more usable for me:

### shortcuts
- `super + space` opens rofi - for opening applications
- `super + m` opens rofi - to shutdown the computer
- `super + t` opens terminal
- `super + f` opens pcmanfm

there are also shortcuts for the window placement:
- `ctrl + super + left arrow` places window left
- `ctrl + super + right arrow` places window right
- `ctrl + super + up arrow` maximizes window
- `ctrl + super + down arrow` sizes down the window
- `ctrl + super + 1` places window in the upper left corner
- `ctrl + super + 2` places window in the lower left corner
- `ctrl + super + 3` places window in the lower right corner
- `ctrl + super + 4` places window in the upper right corner
