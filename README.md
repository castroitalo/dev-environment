# Development Environment

<p>My personal development environment settings.</p>

## Hardware

- Motherboard: H310M H 2.0
- CPU: Intel i5-9400F (6) @ 4.100GHz
- GPU: NVIDIA GeForce GTX 1660 Super
- Memory: 16GB

## I use [Debian](https://www.debian.org/index.pt.html) stable (with GNOME) as my main system.
- Basic Debian configuration (reference website [here](https://averagelinuxuser.com/debian-11-after-install/)):
  1. [Add contrib and non-free repos](https://averagelinuxuser.com/debian-11-after-install/#2-add-contrib-and-non-free-repos):
  2. [Install build-essential](https://averagelinuxuser.com/debian-11-after-install/#5-install-build-essential)
  3. [Install restricted-extras](https://averagelinuxuser.com/debian-11-after-install/#6-install-restricted-extras)
  4. [Mirosoft Fonts Compatibility](https://averagelinuxuser.com/debian-11-after-install/#7-microsoft-fonts-compatibility)
  5. [Configure Swappiness](https://averagelinuxuser.com/debian-11-after-install/#8-configure-swappiness)
  6. [Install Firewall](https://averagelinuxuser.com/debian-11-after-install/#10-install-firewall)
  7. [Enable GNOME Extensions](https://averagelinuxuser.com/debian-11-after-install/#12-enable-gnome-extensions)
     - My GNOME extensions:
       - [Vitals](https://extensions.gnome.org/extension/1460/vitals/)
       - [Workspace Indicator](https://extensions.gnome.org/extension/21/workspace-indicator/)
  8. [Enable Tray Icons](https://averagelinuxuser.com/debian-11-after-install/#13-enable-tray-icons)
  9. [Add User Image](https://averagelinuxuser.com/debian-11-after-install/#15-add-user-image)
  10. [Enable Snap and Flatpak](https://averagelinuxuser.com/debian-11-after-install/#19-enable-snap-and-flatpak)
  11. [Extend the Battery Life](https://averagelinuxuser.com/debian-11-after-install/#20-extend-the-battery-life)

# Software
- [KeePassXC (password manager)](https://keepassxc.org/)
  - It is necessary to install *libfuse2* in order to use this program to work: `sudo apt install libfuse2`
- [Google Chrome (web browser)](https://www.google.com/intl/pt-BR/chrome/)
- [Git (versioning tool)](https://git-scm.com/)
  - `sudo apt install git -y`
  - `git config --global user.name "username"`
  - `git config --global user.email "email@email.com"`
  - `git config --global core.editor code`
  - `ssh-keygen -t rsa -b 4096 -C <something>`
- [cURL (CLI for transfering data)](https://curl.se/)
  - `sudo apt install curl -y`
- [tmux (terminal multiplexer)](https://github.com/tmux/tmux/wiki)
  - `sudo apt install tmux -y`
- [htop (process viwer)](https://github.com/htop-dev/htop)
  - `sudo apt install htop -y`
- [Docker (developing platform)](https://www.docker.com/)
  - Installatio process for Debian [here](https://docs.docker.com/engine/install/debian/)
  - After installation you need to make docker usable without `sudo` command:
    - `sudo groupadd docker`
    - `sudo usermod -aG docker $(whoami)`
    - `newgrp docker`
- [qBittorrent (torrent client)](https://www.qbittorrent.org/download)
  - `sudo apt install qbittorrent -y`
- [Spotify (music player)](https://www.spotify.com/br-en/download/linux/)
- [OBS-Studio (broadcast software)](https://obsproject.com/pt-br/download)
  - `sudo apt install obs-studio -y`
- [VLC (media player)](https://www.videolan.org/vlc/index.pt_BR.html)
  - `sudo apt install vlc -y`
- [GIMP (image editor)](https://www.gimp.org/)
  - `sudo apt install gimp -y`
- [Alacritty](https://alacritty.org/)
  - `sudo apt install alacritty -y`
- [DBeaver (database manager)](https://dbeaver.io/download/)
- [Visual Studio Code (text editor)](https://code.visualstudio.com/)
  - Extensions:
    - [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
    - [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight)
    - [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
    - [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens)
    - [HTML CSS Support](https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css)
    - [Laravel Blade Formatter](https://marketplace.visualstudio.com/items?itemName=shufo.vscode-blade-formatter)
    - [Laravel Blade Snippets](https://marketplace.visualstudio.com/items?itemName=onecentlin.laravel-blade)
    - [Laravel Brade Spacer](https://marketplace.visualstudio.com/items?itemName=austenc.laravel-blade-spacer)
    - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
    - [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
    - [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
    - [Hex Editor](https://marketplace.visualstudio.com/items?itemName=ms-vscode.hexeditor)
    - [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
    - [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
      - I have a Intelephense license, so if you have it, now is a good time to enter you license.
    - [Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
  - Download Postman: `tar -C /tmp/ -xzf <(curl -L https://dl.pstmn.io/download/latest/linux64) && sudo mv /tmp/Postman /opt/`
    ```
      shell
      sudo tee -a /usr/share/applications/postman.desktop << END
      [Desktop Entry]
      Encoding=UTF-8
      Name=Postman
      Exec=/opt/Postman/Postman
      Icon=/opt/Postman/app/resources/app/assets/icon.png
      Terminal=false
      Type=Application
      Categories=Development;
      END
    ```
- [ZSH (shell)](https://www.zsh.org/)
  - `sudo apt install zsh -y`
  - `chsh -s $(which zsh)`
  - Log out and log in again.
  - I use [OhMyZsh] alongside with ZSH: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
    - I use `zsh-autosuggestions` plugin: `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`


<p>Now I just clone my <a href="https://github.com/castroitalo/dotfiles">dotfiles</a> repo and create symbolic link for each file.</p>
