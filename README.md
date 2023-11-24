# Development Envorinment

<p>This is my personal development environment.</p>

## Basic [Debian](https://www.debian.org/) configuration:
I use Debian with [Cinnamon]([https://www.xfce.org/](https://github.com/linuxmint/cinnamon)) desktop envorinment.
- Add non-free repos:
    - Go to **Software & Update > Debian Software** and enable:
        - **DFSG-compatible Software with Non-Free Dependencies (contrib)**
        - **Non-DFSG-compatible Software (non-free)**
- I use a Nvidia graphic card so I need to install Nvidia drivers:
    - `sudo apt install nvidia-driver`
- Install microcode:
    - Go to **Synaptic Package Manager** and search for **microcode**, in my case I'm going to install **intel-microcode**
- Install build-essential:
    - `sudo apt install build-essential dkms linux-headers-$(uname -r)`
- Install microsoft-fonts:
    - `sudo apt install fonts-crosextra-carlito fonts-crosextra-caladea`
- Configure swappiness:
    - Add `vm.swappiness=10` to **/etc/sysctl.conf** file.
- Install firewall: 
    - `sudo apt install ufw`
    - `sudo ufw enable`
- Go to **Software** app and uninstall shitty apps.
- Reboot.

## Setting up programs
### My dotfiles [here](https://github.com/gnulll/dotfiles)
<em>This is all my softwares, not just for development.</em>

- [KeePassXC](https://keepassxc.org/) - Password manager.
    - To be able to execute KeePassXC give it permission to be executable.
    - And install libfuse:
        - `sudo apt install libfuse2`
- [Git](https://git-scm.com/) - Versioning tool.
    - `sudo apt install git -y`
    - `git config --global user.name <username>`
    - `git config --global user.email <user_email>`
    - `git config --global core.editor code`
    - `ssh-keygen -t rsa -b 4096 -C <user_email>`
- [curl](https://curl.se/) - CLI for transferring data.
    - `sudo apt install curl -y`
- [tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer.
    - `sudo apt install tmux -y`
- [htop](https://github.com/htop-dev/htop) - Process viewer.
    - `sudo apt install htop -y`
- [neofetch](https://github.com/dylanaraps/neofetch) - A CLI sysinfo tool.
    - `sudo apt install neofetch -y`
- [tree](https://www.geeksforgeeks.org/tree-command-unixlinux/) - Recursive directory viwer.
    - `sudo apt install tree- y`
- [net-tools](https://github.com/ecki/net-tools) - Basic network tools.
    - `sudo apt install net-tools -y`

- [qBittorrent](https://www.qbittorrent.org/download) - Torrent client.
    - `sudo apt install qbittorrent -y`
- [Spotify](https://www.spotify.com/br-pt/download/linux/) - Music Player.
    - `curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg`
    - `echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list`
    - `sudo apt-get update && sudo apt-get install spotify-client`
- [Dbeaver](https://dbeaver.io/download/) - SQL client.
    - Download **.deb** file and install it with:
        - `sudo dpkg -i <deb_file>`
- [OBS-Studio](https://obsproject.com/pt-br/download) - Screen recorder
    - `sudo apt install obs-studio -y`
- [VLC](https://www.videolan.org/vlc/index.pt_BR.html) - Media player.
    - `sudo apt install vlc -y`
- [GIMP](https://www.gimp.org/)
    - `sudo apt install gimp -y`
- [Inkscape](https://inkscape.org/pt-br/)
    - `sudo apt install inkscape -y`
- [Docker](https://www.docker.com/)
    - Oficial documentation for installation [here](https://docs.docker.com/engine/install/ubuntu/)
    - `for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done`
    - `sudo apt update`
    - `sudo apt-get install ca-certificates curl gnupg`
    - `sudo install -m 0755 -d /etc/apt/keyrings`
    - `curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg`
    - `sudo chmod a+r /etc/apt/keyrings/docker.gpg`
    - `echo "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null sudo apt-get update`    
- [ZSH](https://www.zsh.org/) - Shell.
    - `sudo apt install zsh -y`
    - `chsh -s $(which zsh)`
    - Reboot.
    - [OhMyZsh](https://ohmyz.sh/) - ZSH framework.
        - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
        - Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) plugin:
            - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
- [Emacs](https://www.gnu.org/software/emacs/)
    - Create a symbolic link to **home** directory for **.emacs.d**.
- [XTerm](https://invisible-island.net/xterm/)
    - `sudo apt install xterm -y`

Easy Peasy Lemon Squeezy 👌
