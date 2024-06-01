# Development Environment

<p>This is my personal development environment for PHP back-end development.</p>

## Basic [Debian](https://www.debian.org/index.pt.html) configuration:
- Add non-free repos:
  - Open **Software and Updates** > **Debian Software** > Enable DFSG and non-DFSG compatible software > Reload.
- Install build-essentials:
  - `sudo apt install build-essential dkms linux-headers-$(uname -r)`
- Install restricted-extras:
  - `sudo apt install ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi`
- Make Microsoft fronts compatible:
  - `sudo apt install fonts-crosextra-carlito fonts-crosextra-caladea`
- Configure swappiness for better performance:
  - `sudo nano /etc/sysctl.conf`
  - At the end of this file add this line:
    - `vm.swappiness=10`
  - Now reboot your computer. To check if this worked type:
    - `cat /proc/sys/vm/swappiness`
    - You should see **10** on your terminal.
- Install UFW firewall:
  - `sudo apt install ufw -y`
- Now some settings can change depending on your desktop environment, so I just gonna say what it is, not gonna teach how it's done (I use XFCE desktop environment btw).
  - Add Google DNS (8.8.8.8).
  - Remove screen seleep.
  - Change display settings for my monitor.
  - Customize keyboard shortcuts.

## Setting up programs - You can find my dotfiles [here](https://github.com/gnulll/dotfiles)
- [KeePassXC](https://keepassxc.org/) - Password manager
  - Install libfuse:
    - `sudo apt install libfuse2`
  - Download KeePassXC AppImage file.
  - To be able to execute KeePassXC give it permission to be executable.
  - I put all my appimages files in a folder called **AppImages** inside my **Documents** folder.
- Install and login into Google Chrome and online accounts.
- [Git](https://git-scm.com/) - Versioning tool.
  - `sudo apt install git -y`
  - `git config --global user.name <username>`
  - `git config --global user.email <user_email>`
  - `git config --global core.editor code`
  - Generate SSH key for GitHub: `ssh-keygen -t rsa -b 4096 -C`
- [curl](https://curl.se/) - CLI for transferring data.
  - `sudo apt install curl -y`
- [tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer.
  - `sudo apt install tmux -y`
- [htop](https://github.com/htop-dev/htop) - Process viewer.
  - `sudo apt install htop -y`
- [Node.js](https://nodejs.org/en) - JavaScript runtime.
  - Install Node.js via NVM [here](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
  - List Node versions with `nvm ls-remote`
  - Install a Node version with `nvm install <version>`
  - Change the current Node version with `nvm use node-<version>`
- [Docker](https://www.docker.com/) - Developing platform.
  - Oficial documentation for Debian installation [here](https://docs.docker.com/engine/install/debian/)
- [DBeaver](https://dbeaver.io/download/) - Database manager.
  - Download **.deb** file and install it with:
    - `sudo dpkg -i <deb_file>`
- [qBittorrent](https://www.qbittorrent.org/download) - Torrent client.
  - `sudo apt install qbittorrent -y`
- [Spotify](https://www.spotify.com/br-pt/download/linux/) - Music Player.
  - `curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg`
  - `echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list`
  - `sudo apt-get update && sudo apt-get install spotify-client`
- [OBS-Studio](https://obsproject.com/pt-br/download) - Open Broadcast Software.
  - `sudo apt install obs-studio`
- [VLC](https://www.videolan.org/vlc/index.pt_BR.html) - Media player.
  - `sudo apt install vlc -y`
- [GIMP](https://www.gimp.org/) - Image editor.
  - `sudo apt install gimp -y`
- [ZSH](https://www.zsh.org/) - Shell.
  - `sudo apt install zsh -y`
  - `chsh -s $(which zsh)`
  - Reboot.
  - [OhMyZsh](https://ohmyz.sh/) 
    - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
    - Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) plugin:
      - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
- [Neovim](https://neovim.io/) - Code Editor.
  - I use the AppImage release from Neovim, just download it [here](https://github.com/neovim/neovim/releases)
  - I use the [packer](https://github.com/wbthomason/packer.nvim) package manager, you need to install it before copying the Neovim dotfile.
- [Alacritty](https://alacritty.org/) - Terminal Emulator.
  - `sudo apt install alacritty -y`

Easy Peasy Lemon Squeezy 👌
