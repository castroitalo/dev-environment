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
### My dotfiles [here](https://github.com/devcastroitalo/dotfiles)
<em>This is all my softwares, not just for development.</em>

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
    - Making Firefox great:
        - Create a new user profile inside `about:profiles`.
        - Download a Firefox user settings [here](https://github.com/arkenfox/user.js).
        - Inside the **user.js-master** folder and copy everything inside this folder to your profile directory.
        - Now restart Firefox.
    - My extensions:
        - [uBlock](https://ublockorigin.com/)
        - [Decentraleyes](https://addons.mozilla.org/pt-BR/firefox/addon/decentraleyes/)
        - [GNOME Extensions](https://extensions.gnome.org/)
- [Git](https://git-scm.com/) - Versioning tool.
    - `sudo apt install git -y`
    - `git config --global user.name <username>`
    - `git config --global user.email <email>`
    - `git config --global core.editor <editor>`
    - `ssh-keygen -t rsa -b 4096 -C <email>`
- [curl](https://curl.se/) - CLI for transferring data.
    - `sudo apt install curl -y`
- [qBittorrent](https://www.qbittorrent.org/download) - Torrent client.
    - `sudo apt install qbittorrent`
- [Dbeaver](https://dbeaver.io/download/) - SQL client.
    - After download the **.deb** file install it:
        - `sudo dpkg -i <deb_file>`
- [tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer.
    - `sudo apt install tmux -y`
    - Copy the **.tmux.conf** file in [dotfiles](https://github.com/devcastroitalo/dotfiles) repo.
- [htop](https://github.com/htop-dev/htop) - Process viewer.
    - `sudo apt install htop -y`
- [neofetch](https://github.com/dylanaraps/neofetch) - A CLI sysinfo tool.
    - `sudo apt install neofetch`
- [tree](https://www.geeksforgeeks.org/tree-command-unixlinux/) - Recursive directory viwer.
    - `sudo apt install tree -y`
- [net-tools](https://github.com/ecki/net-tools) - Basic network tools.
    - `sudo apt install net-tools -y`
- [VLC](https://www.videolan.org/vlc/index.pt_BR.html) - Media player.
    - `sudo apt install vlc -y`
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
- [Neovim](https://github.com/neovim/neovim) - Text editor.
    - Install **pip3**:
        - `sudo apt install python3-pip -y`
        - Now install the **pynvim** package:
            - `pip3 install pynvim`
    - Install [Node.js](https://nodejs.org/en):
        - `curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -`
        - `sudo apt install nodejs -y`
    - Install Neovim:
        - `sudo add-apt-repository ppa:neovim-ppa/unstable`
        - `sudo apt update`
        - `sudo apt-get install neovim`
        - Install [PlugInstall](https://github.com/junegunn/vim-plug) - Plugin manager.
        - Copy the `init.vim` file from [dotfiles](https://github.com/devcastroitalo/dotfiles).
        - Enter `init.vim` file with Neovim and type **:PlugInstall**


## Setting up Docker
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
    - `echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`
- Update package index:
    - `sudo apt-get update`
- Install Docker Engine:
    - `sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`

Easy Peasy Lemon Squeezy 👌
