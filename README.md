# Development Envorinment

<p>This is my personal development environment.</p>

## Basic [Ubuntu](https://ubuntu.com/download) configuration
- Settings:
    - Network: Setup google DNS.
    - Power: 
        - Power Mode: Performance.
        - Power Saving Options:          
            - Screen Blank: Never.
    - Displays:
        - Fractional Scaling: enabled.
        - Refresh Rate: max possible.
- If tou have Nvidia graphics card you need to install nvidia drivers, you can do it in **Additional Drivers** and select the driver you prefer.
- Enable minimize apps in dock with an click:
    - `gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'`
- Install [GNOME extensions](https://extensions.gnome.org/);
    - `sudo apt install chrome-gnome-shell`
    - You can get the extension [here](https://extensions.gnome.org/) (required to use GNOME extensions).
    - My GNOME extensions:
        - [Vitals](https://extensions.gnome.org/extension/1460/vitals/)
        - [Net speed Simplified](https://extensions.gnome.org/extension/3724/net-speed-simplified/)
        - [Audio Output Switcher](https://extensions.gnome.org/extension/751/audio-output-switcher/)
- Install [GNOME tweaks](https://gitlab.gnome.org/GNOME/gnome-tweaks):
    - `sudo apt install gnome-tweaks -y`
    - Inside GNOME tweaks:
        - windows:
            - Center New Windows: enabled.

## Setting up basic programs
### My dotfiles [here](https://github.com/gnulll/dotfiles)
<em>This is all my softwares, not just for development.</em>

#### Terminal apps
- [Git](https://git-scm.com/) - Versioning tool.
    - `sudo apt install git -y`
    - `git config --global user.name <username>`
    - `git config --global user.email <email>`
    - `git config --global core.editor <editor>`
    - `ssh-keygen -t rsa -b 4096 -C <email>`
- [curl](https://curl.se/) - CLI for transferring data.
    - `sudo apt install curl -y`
- [tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer.
    - `sudo apt install tmux -y`
    - Copy the **.tmux.conf** file in [dotfiles](https://github.com/gnulll/dotfiles) repo.
- [htop](https://github.com/htop-dev/htop) - Process viewer.
    - `sudo apt install htop -y`
- [neofetch](https://github.com/dylanaraps/neofetch) - A CLI sysinfo tool.
    - `sudo apt install neofetch`
- [tree](https://www.geeksforgeeks.org/tree-command-unixlinux/) - Recursive directory viwer.
    - `sudo apt install tree -y`
- [net-tools](https://github.com/ecki/net-tools) - Basic network tools.
    - `sudo apt install net-tools -y`
- [ZSH](https://www.zsh.org/) - Shell.
    - `sudo apt install zsh -y`
    - `chsh -s $(which zsh)`
    - Restart you computer
- [OhMyZsh](https://ohmyz.sh/) - ZSH framework.
    - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
    - Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) plugin:
        - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
        - Add it to **.zshrc** file:
            ```
            plugins=( 
                # other plugins...
                zsh-autosuggestions
            )
            ```
    - I have this keymap for completing suggestions on **Ctrl-space**, so in the **.zshrc** file add:
        ```
        # zsh-autosuggestions settings
        bindkey '^ ' autosuggest-accept
        ```
- [Vim](https://www.vim.org/) - Text editor for fast editing
    - `sudo apt install vim -y`
- [Docker](https://www.docker.com/)
    - Oficial documentation for installation [here](https://docs.docker.com/engine/install/ubuntu/)
    - Uninstalling conflict packages:
        - `for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done`
    - Update apt package index:
        - `sudo apt-get update`
        - `sudo apt-get install ca-certificates curl gnupg`
    - Add docker's official GPG key:
        - `sudo install -m 0755 -d /etc/apt/keyrings`
        - `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg`
        - `sudo chmod a+r /etc/apt/keyrings/docker.gpg`
    - Setup repository:
        - `echo "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null sudo apt-get update`
    - Update package index:
        - `sudo apt-get update`
    - Install Docker Engine:
        - `sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`

#### GUI apps
- [Mozilla Firefox](https://support.mozilla.org/en-US/kb/install-firefox-linux#w_install-firefox-from-mozilla-builds-for-advanced-users) - Web browser.
    - Download firefox [here](https://support.mozilla.org/en-US/kb/install-firefox-linux#w_install-firefox-from-mozilla-builds-for-advanced-users):
        - Go to **Downloads** folder and extract the archive:
            - `tar xjf firefox-*.tar.bz2`
        - Move the Firefox files to **/opt** folder:
            - `mv firefox /opt`
        - Create a symlink:
            - `ln -s /opt/firefox/firefox /usr/local/bin/firefox`
        - Download a desktop file:
            - `wget https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop -P /usr/local/share/applications `
    - Uninstall snap Firefox:
        - `sudo snap remove firefox`
    - My extensions:
        - [uBlock](https://ublockorigin.com/)
        - [GNOME Extensions](https://extensions.gnome.org/)
- [KeePassXC](https://keepassxc.org/) - Password manager
- [qBittorrent](https://www.qbittorrent.org/download) - Torrent client.
    - `sudo apt install qbittorrent`
- [Spotify](https://www.spotify.com/br-pt/download/linux/) - Music Player.
    - `curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg`
    - `echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list`
    - `sudo apt-get update && sudo apt-get install spotify-client`
- [Dbeaver](https://dbeaver.io/download/) - SQL client.
    - After download the **.deb** file install it:
        - `sudo dpkg -i <deb_file>`
- [Discord](https://discord.com/) - Chat app
    - Download **.deb** file on oficial website and install it with **dpkg**:
        - `sudo dpkg -i <deb_file>`
- [OBS-Studio](https://obsproject.com/pt-br/download) - Screen recorder
    - `sudo snap install obs-studio`
- [VLC](https://www.videolan.org/vlc/index.pt_BR.html) - Media player.
    - `sudo apt install vlc -y`
- [GIMP](https://www.gimp.org/)
    - `sudo apt install gimp -y`
- [Inkscape](https://inkscape.org/pt-br/)
    - `sudo apt install inkscape -y`
- [GuFw](https://help.ubuntu.com/community/Gufw) - Firewall
    - `sudo apt install gufw -y`
- [Visual Setudio Code](https://code.visualstudio.com/)
    - Download Visual Studio Code. After download file go to **Downloads** file and install **.dpkg** file:
        -  `sudo dpkg -i <code_file>`
    - Copy **settings.json**, **keybindings.json** and snippets files from [dotfiles](https://github.com/gnulll/dotfiles) repo.
    - Install extensions:
    - Install extensions:
        - [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
		- [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks)
        - [Create](https://marketplace.visualstudio.com/items?itemName=hideoo.create)
        - [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
		- [Draw.io Integration](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio)
		- [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
		- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
		- [JavaScript (ES6) code snippets](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets)
		- [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
		- [PHP DocBlocker](https://marketplace.visualstudio.com/items?itemName=neilbrayfield.php-docblocker)
		- [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
		- [SCSS Formatter](https://marketplace.visualstudio.com/items?itemName=sibiraj-s.vscode-scss-formatter)
		- [SCSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-scss) 
		- [Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)


Easy Peasy Lemon Squeezy 👌
