# Development Envorinment

<p>This is my personal development environment.</p>

## My tools
- [ubuntu](https://ubuntu.com/download)
- [Mozilla Firefox](https://www.mozilla.org/pt-BR/firefox/new/)
	- My favorites website:
		- [Trello](https://trello.com/pt-BR)
		- [Notion](https://www.notion.so/)
		- [GitHub](https://github.com/)
		- [Replit](https://replit.com/)
		- [StackEdit](https://stackedit.io/)
		- [Figma](https://www.figma.com/)
		- [Excalidraw](https://excalidraw.com/)
- [Neovim](https://neovim.io/)
- [XTerm](https://invisible-island.net/xterm/)
- [Dbeaver](https://dbeaver.io/download/)

## Basic Ubuntu configuration
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
<em>This is all my softwares, not just for development.</em>
- Download Firefoz [here](https://www.mozilla.org/en-US/firefox/linux/?utm_medium=referral&utm_source=support.mozilla.org):
    - `tar xjf firefox-*.tar.bz2`
    - `sudo mv firefox /opt`
    - `sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox`
    - `sudo wget https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop -P /usr/local/share/applications `
- Uninstall snap Firefox:
    - `sudo snap remove firefox`
- [Git](https://git-scm.com/) - Versioning tool.
    - `sudo apt install git -y`
    - `git config --global user.name <username>`
    - `git config --global user.email <email>`
    - `git config --global core.editor <editor>`
    - `ssh-keygen -t rsa -b 4096 -C <email>`
- [curl](https://curl.se/) - CLI for transferring data.
- [XTerm](https://invisible-island.net/xterm/) - Terminal emulator.
    - `sudo apt install xterm -y`
    - Copy the .Xresources file in this repo.
- [qBittorrent](https://www.qbittorrent.org/download) - Torrent client.
- [Spotify](https://www.spotify.com/br-pt/download/linux/) - Music Player.
- [Dbeaver](https://dbeaver.io/download/) - SQL client.
- [tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer.
    - `sudo apt install tmux -y`
- [htop](https://github.com/htop-dev/htop) - Process viewer.
    - `sudo apt install htop -y`
- [tree](https://www.geeksforgeeks.org/tree-command-unixlinux/) - Recursive directory viwer.
- [net-tools](https://github.com/ecki/net-tools) - Basic network tools.
    - `sudo apt install net-tools -y`
- [VLC](https://www.videolan.org/vlc/index.pt_BR.html) - Media player.
    - `sudo apt install vlc -y`
- [OBS-Studio](https://obsproject.com/pt-br/download) - Screen recorder.
    - `sudo apt install obs-studio -y`
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
- [Neovim](https://neovim.io/) - Text editor.
    - Install pip: 
        - `sudo apt install python3-pip`
        - Install **pynvim** pip package: 
            - `pip install pynvim`
    - Install [Node.js](https://nodejs.org/en)
        - `curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -`
        - `sudo apt install nodejs -y`
        - Install [emmet-ls](https://github.com/aca/emmet-ls) package (for neovim): 
            - `npm install -g emmet-ls`
    - Install Neovim:
        - `sudo add-apt-repository ppa:neovim-ppa/unstable`
        - `sudo apt update`
        - `sudo apt install neovim`

## Setting up Docker
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
