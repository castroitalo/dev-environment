# Development Envorinment

<p>This is my personal development environment.</p>

## Basic [Ubuntu](https://ubuntu.com/) configuration:
- On **Settings**:
    - **Network**: Add the Google DNS (8.8.8.8).
    - **Power**: Select the Performance option.
    - **Display**: Enable Factional Scaling.
    - **Keyboard**: Setup keyboard shortcuts.
- Install NVIDIA drivers on **Additional drivers**.
- Install the original Firefox:
    - Download Firefox [here](https://www.mozilla.org/en-US/firefox/linux/?utm_medium=referral&utm_source=support.mozilla.org)
    - `cd ~/Downloads`
    - `tar xjf firefox-*.tar.bz2`
    - `sudo mv firefox /opt`
    - `sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox`
    - `sudo wget https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop -P /usr/local/share/applications`
    - `sudo snap remove firefox`
    - `/usr/local/bin/firefox`
- Enable minimize on dock click:
    - `gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'`
- Install codecs and Microsoft fonts:
    - `sudo apt install ubuntu-restricted-extras`
- Install GNOME extensions:
    - `sudo apt install chrome-gnome-shell`
    - Extensions that I use:
        - [Vitals](https://extensions.gnome.org/extension/1460/vitals/)
        - [Audio Output Switcher](https://extensions.gnome.org/extension/751/audio-output-switcher/)

## Setting up programs
### My dotfiles [here](https://github.com/gnulll/dotfiles)
<em>This is all my softwares, not just for development.</em>

- [KeePassXC](https://keepassxc.org/) - Password manager.
    - And install libfuse:
        - `sudo apt install libfuse2`
    - To be able to execute KeePassXC give it permission to be executable.
    - I put all my appimages files in a folder called **AppImages** inside my **Documents** folder.
- Login into Firefox and online accounts.	
- [Git](https://git-scm.com/) - Versioning tool.
    - `sudo apt install git -y`
    - `git config --global user.name <username>`
    - `git config --global user.email <user_email>`
    - `git config --global core.editor nvim`
    - `ssh-keygen -t rsa -b 4096 -C <user_email>`
- [curl](https://curl.se/) - CLI for transferring data.
    - `sudo apt install curl -y`
- [tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer.
    - `sudo apt install tmux -y`
- [Docker](https://www.docker.com/) - Developing platform
    - Oficial documentation for Debian installation [here](https://docs.docker.com/engine/install/ubuntu/)
- [Visual Studio Code](https://code.visualstudio.com/) - Text editor.
    - Download **.deb** file and install it with:
        - `sudo dpkg -i <deb_file>`
    - Copy **settings.json** and **keybindings.json** from [dotfiles](https://github.com/castroitalo/dotfiles)
    - Install extensions:
        - [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
        - [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks)
        - [Create](https://marketplace.visualstudio.com/items?itemName=hideoo.create)
        - [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
        - [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
        - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
        - [Min Theme](https://marketplace.visualstudio.com/items?itemName=miguelsolorio.min-theme)
        - [PHP DocBlocker](https://marketplace.visualstudio.com/items?itemName=neilbrayfield.php-docblocker)
        - [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
        - [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
        - [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
        - [Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
- [Dbeaver](https://dbeaver.io/download/) - SQL client.
    - Download **.deb** file and install it with:
        - `sudo dpkg -i <deb_file>`
- [httpie](https://httpie.io/) - Postman alternative
    - Download the **AppImage** file.
- [htop](https://github.com/htop-dev/htop) - Process viewer.
    - `sudo apt install htop -y`
- [neofetch](https://github.com/dylanaraps/neofetch) - A CLI sysinfo tool.
    - `sudo apt install neofetch -y`
- [net-tools](https://github.com/ecki/net-tools) - Basic network tools.
    - `sudo apt install net-tools -y`
- [qBittorrent](https://www.qbittorrent.org/download) - Torrent client.
    - `sudo apt install qbittorrent -y`
- [Spotify](https://www.spotify.com/br-pt/download/linux/) - Music Player.
    - `curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg`
    - `echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list`
    - `sudo apt-get update && sudo apt-get install spotify-client`
- [VLC](https://www.videolan.org/vlc/index.pt_BR.html) - Media player.
    - `sudo apt install vlc -y`
- [GIMP](https://www.gimp.org/) - Image editor
    - `sudo apt install gimp -y`
- [Discord](https://discord.com/) - Comunity app.
    - Download **.deb** file and install it with:
        - `sudo dpkg -i <deb_file>`
- [ZSH](https://www.zsh.org/) - Shell.
    - `sudo apt install zsh -y`
    - `chsh -s $(which zsh)`
    - Reboot.
    - [OhMyZsh](https://ohmyz.sh/) - ZSH framework.
        - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
        - Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) plugin:
            - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

Easy Peasy Lemon Squeezy 👌
