# Development Environment

<p>My personal development environment settings.</p>

# Hardware

- Laptop ThinkPad T14 Gen 1
- CPU: Intel Core i5-10310 4.40 GHz
- Memory: 16GB

# I use [Arch Linux "BTW"](https://archlinux.org/)

## Basic Arch Linux setup

Do this right after installing base Arch

### Allowing your user to sudo

First of all you need to have `vi` installed: - `sudo pacman -Syu vi`

Now you need to edit your `sudoers` file to add the permissions for your user: - `visudo`
This will open the `/etc/sudoers` file, search for this line:

```
## Uncoment to allow members of group wheel to execute any command
# %wheel ALL=(ALL:ALL) ALL
```

Just uncoment the line.

### Update your system

    - `sudo pacman -Syyu`

### Installing AUR helper

Let's install `yay` to help us to manage AUR packages.
The first thing we need to install `yay` is to have `git` installed, so let install it: - `sudo pacman -Syu git`
Now lets clone `yay` repo: - `git clone https://aur.archlinux.org/yay.git`
Now lets build `yay`: - `cd yay/` - `makepkg -si`
You now have `yay` installed.

### Installing [i3wm](https://i3wm.org/)

The first thing we gonna need to do is to install [Xorg](https://www.x.org/wiki/) that is required for any GUI you might want to use. - `sudo pacman -S xorg-server xorg-xinit xorg-apps`
Install **i3wm**: - `sudo pacman -S i3-wm i3status i3lock dmenu`
Install a terminal emulator, I particularly like to install Xterm: - `sudo pacman -Syu xterm`
Install fonts so **i3wm** doesn't look broken: - `sudo pacman -S ttf-dejavu ttf-liberation` - `sudo pacman -S noto-fonts noto-fonts-emoji`
In this step is something that is very particular, I don't like to have a display manager, I log in using **TTY** and then intialize my **i3wm** after a successfull login, so this steps might be different from what you want to do:
First of all, let's create a `.xinitrc` file on `/` and paste this inside:

```sh
#!/bin/sh

setxkbmap us

exec i3
```

Make it executable: `chmod +x ~/.xinitrc`
To achieve what I want to do, I need to edit my `~/.bash_profile` file:

```
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec startx
fi
```

This will start **i3wm** right after I successfully login using **TTY**
Now you can reboot your system.

### Some other things to make **i3wm** better:

    - `sudo pacman -S feh picom network-manager-applet brightnessctl pulseaudio pavucontrol`

# Softwares

- [KeePassXC (password manager)](https://keepassxc.org/)
- [Chromium Web Browser](https://www.chromium.org/chromium-projects/)
- [Git (versioning tool)](https://git-scm.com/)
  - `sudo apt install git -y`
  - `git config --global user.name "username"`
  - `git config --global user.email "email@email.com"`
  - `git config --global core.editor code`
  - `ssh-keygen -t rsa -b 4096 -C <something>`
- [cURL (CLI for transfering data)](https://curl.se/)
  - `sudo pacman -Syu curl`
- [tmux (terminal multiplexer)](https://github.com/tmux/tmux/wiki)
  - `sudo pacman -Syu tmux`
- [htop (process viwer)](https://github.com/htop-dev/htop)
  - `sudo pacman -Syu htop`
- [Docker (developing platform)](https://www.docker.com/)
  - `sudo pacman -Syu docker`
  - After installation you need to make docker usable without `sudo` command:
    - `sudo groupadd docker
    - `sudo usermod -aG docker $(whoami)`
    - `newgrp docker`
- [qBittorrent (torrent client)](https://www.qbittorrent.org/download)
  - `sudo pacman -Syu qbittorrent`
- [Spotify (music player)](https://www.spotify.com/br-en/download/linux/)
  - `yay -S spotify`
- [MPV](https://mpv.io/)
  - `sudo pacman -S mpv`
- [Emacs](https://www.gnu.org/software/emacs/)
  - `sudo pacman -Syu emacs`

<p>Now I just clone my <a href="https://github.com/castroitalo/dotfiles">dotfiles</a> repo and create symbolic link for each file.</p>

