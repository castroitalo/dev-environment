# Development Environment

<p>My personal development environment settings.</p>

## Hardware
- Laptop ThinkPad T14 Gen 1
- CPU: Intel Core i5-10310 4.40 GHz
- Memory: 16GB

## I use [Debian](https://www.debian.org/index.pt.html) stable as my main system.
- Basic Debian configuration:
  1. Add contrib and non-free repos
  2. Install build-essential
  3. Install restricted-extras
  4. Mirosoft Fonts Compatibility
  5. Install Firewall (ufw)
  6. Enable Flatpak

# Software
- [KeePassXC (password manager)](https://keepassxc.org/)
  - It might be necessary to install *libfuse2* in order to use this program: `sudo apt install libfuse2`
- [Chromium Web Browser](https://www.chromium.org/chromium-projects/)
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
- [VLC (media player)](https://www.videolan.org/vlc/index.pt_BR.html)
  - `sudo apt install vlc -y`
- [GIMP (image editor)](https://www.gimp.org/)
  - `sudo apt install gimp -y`
- XTerm
  - `sudo apt install xterm -y`
- [DBeaver (database manager)](https://dbeaver.io/download/)
- [Visual Studio Code (text editor)](https://code.visualstudio.com/)
  - Extensions:
    - [JavaScript and TypeScript Nightly](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-typescript-next)
    - [ASM Code Lens](https://marketplace.visualstudio.com/items?itemName=maziac.asm-code-lens)
    - [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
    - [Bash Debug](https://marketplace.visualstudio.com/items?itemName=rogalmic.bash-debug)
    - [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
    - [CPP Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
    - [CPP Tools Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack)
    - [CPP Tools Theme](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-themes)
    - [CMake Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools)
    - [VSCode Containers](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-containers)
    - [Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
    - [VSCode Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
    - [Dotenv](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
    - [Editor Config](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
    - [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens)
    - [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
    - [Prettier VSCode](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
    - [Remote SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
    - [Remote SSH Edit](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh-edit)
    - [Remote Explorer](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-explorer)
    - [Shell Check](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck)
    - [VIM](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
- [ZSH (shell)](https://www.zsh.org/)
  - `sudo apt install zsh -y`
  - `chsh -s $(which zsh)`
  - Log out and log in again.
  - I use [OhMyZsh] alongside with ZSH: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
    - I use `zsh-autosuggestions` plugin: `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

<p>Now I just clone my <a href="https://github.com/castroitalo/dotfiles">dotfiles</a> repo and create symbolic link for each file.</p>
