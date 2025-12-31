# Development Environment

My personal development environments settings.

## Hardware

- **Laptop**: ThinkPad T14 Gen 1
- **CPU**: Intel Core i5-10310 @ 4.40 GHz
- **Memory**: 16 GB

## OS

- [Arch Linux](https://archlinux.org/)

## Basic Arch Linux Setup

> Do this right after installing base Arch.

### Allowing your user to use `sudo`

First, make sure `vi` is installed:

```shell
sudo pacman -Syu vi
```

Edit the sudoers file:

```shell
visudo
```

In `/etc/sudoers`, find the following lines:

```text
## Uncomment to allow members of group wheel to execute any command
# %wheel ALL=(ALL:ALL) ALL
```

Uncomment the last line:

```text
%wheel ALL=(ALL:ALL) ALL
```

### Update your system

```shell
sudo pacmans -Syyu
```

### Installing AUR helper

We will use [yay](https://aur.archlinux.org/packages/yay) to manager AUR packages.
First, install [git](https://git-scm.com/):

```shell
sudo pacman -Syu git
```

Clone the `yay` repository:

```shell
git clone https://aur.archlinux.org/yay.git
```

Build and install `yay`:

```shell
cd yay/
makepkg -si
```

### Install [i3wm](https://i3wm.org/)

Install [Xorg](https://wiki.archlinux.org/title/Xorg), which is required for any GUI:

```shell
sudo pacman -S xorg-server xorg-xinit xorg-apps
```

Install `i3wm` and related tools:

```shell
sudo pacman -S i3-wm i3status i3lock dmenu
```

Install a terminal emulator, I personally like to use [Xterm](https://wiki.archlinux.org/title/Xterm):

```shell
sudo pacman -Syu xterm
```

Instlal fonts so `i3wm` doesn't look broken:

```shell
sudo pacman -S ttf-dejavu ttf-liberation
sudo pacman -S noto-fonts noto-fonts-emoji
```

#### Starting `i3wm` without a display manager

I prefer logging in via **TTY** and starting  **i3wm** manually.
Create a `.xinitrc` file in your home directory:

```text
#!/bin/sh


setxkbmap us


exec i3
```

Make it executable:

```shell
chmod +x ~/.xinitrc
```

Edit your `~/.bash_profile`:

```text
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec startx
fi
```

This will automatically start `i3wm` after logging in on **TTY**.
Rebbot your system.

### Additional tools for i3wm

```shell
sudo pacman -S feh picom network-manager-applet brightnessctl pulseaudio pavucontrol
```

## Software

- [KeePassXC](https://keepassxc.org/) - Password manager.

```shell
sudo pacman -Syu keepassxc
```

- [Chromium](https://www.chromium.org/getting-involved/download-chromium/) - Web browser.

```shell
sudo pacman -Syu chromium
```

- [Git](https://git-scm.com/) - Versioning tool

```shell
sudo pacman -Syu git
git config --global user.name ""
git config --global user.email ""
git config --global core.editor ""
ssh-keygen -t rsa -b 4096 -C ""
```

- [cURL](https://curl.se/) - CLI transfer data tool

```shell
sudo pacman -Syu curl
```

- [tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer

```shell
sudo pacman -Syu tmux
```

- [htop](https://htop.dev/) - Process viewer

```shell
sudo pacman -Syu htop
```

- [Docker](https://www.docker.com/) - Development Platform

```shell
sudo pacman -Syu docker
sudo groupadd docker
sudo usermod -aG docker $(whoami)
newgrp docker
```

- [qBittorrent](https://www.qbittorrent.org/) - Torrent client

```shell
sudo pacman -Syu qbittorrent
```

- [Soptify](https://www.spotify.com/br-pt/premium/?ref=webplayer) - Music Player

```shell
yay -S spotify
```

- [MPV](https://mpv.io/) - Media player

```shell
sudo pacman -Syu mpv
```

- [Emacs](https://www.gnu.org/software/emacs/) - Everything

```shell
sudo pacman -Syu emacs
```

# [Dotfiles](https://github.com/castroitalo/dotfiles)


