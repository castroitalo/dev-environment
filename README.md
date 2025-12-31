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


