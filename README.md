# Development Envorinment

<p>This is my personal development environment.</p>

## Basic [Debian](https://www.debian.org/) configuration:
I use Debian with [GNOME](https://www.gnome.org/) desktop envorinment.
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
- Install restricted-extras
	- `sudo apt install ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi`
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
- [OBS-Studio](https://obsproject.com/pt-br/download) - Screen recorder
    - `sudo apt install obs-studio -y`
- [VLC](https://www.videolan.org/vlc/index.pt_BR.html) - Media player.
    - `sudo apt install vlc -y`
- [GIMP](https://www.gimp.org/) - Image editor
    - `sudo apt install gimp -y`
- [Inkscape](https://inkscape.org/pt-br/) - Vetorial drawing app
    - `sudo apt install inkscape -y`
- [Dbeaver](https://dbeaver.io/download/) - SQL client.
    - Download **.deb** file and install it with:
        - `sudo dpkg -i <deb_file>`
- [Docker](https://www.docker.com/) - Developing platform
    - Oficial documentation for Debian installation [here](https://docs.docker.com/engine/install/debian/)
- [ZSH](https://www.zsh.org/) - Shell.
    - `sudo apt install zsh -y`
    - `chsh -s $(which zsh)`
    - Reboot.
    - [OhMyZsh](https://ohmyz.sh/) - ZSH framework.
        - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
        - Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) plugin:
            - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
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

Easy Peasy Lemon Squeezy 👌
