# Development Environment

<p>My personal development environment settings.</p>

## Hardware
- Laptop ThinkPad T14 Gen 1
- CPU: Intel Core i5-10310 4.40 GHz
- Memory: 16GB

## I use [Arch Linux "BTW"](https://archlinux.org/)

### Basic Arch Linux setup

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
