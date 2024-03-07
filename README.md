# Development Environment

<p>This is my personal development environment for PHP full stack development.</p>

## Basic [Debian](https://www.debian.org/index.pt.html) configuration:
- On **Settings**:
  - **Network**: Add the Google DNS (8.8.8.8).
    - **Power**: Select the Performance option.
    - **Display**: Enable Factional Scaling.
    - **Keyboard**: Setup keyboard shortcuts.
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
- Install [Google Chrome](https://www.google.com/intl/pt-BR/chrome/):
  - Download **.deb** file and install it with:
    - `sudo dpkg -i <deb_file>`
    - My web tools:
      - [Google Drive](https://www.google.com/intl/pt-br/drive/about.html)
      - [Color Picker](https://imagecolorpicker.com/en)
      - [Bitwarden Password Generator](https://bitwarden.com/password-generator/)
      - [Regex101](https://regex101.com/)
      - [4devs](https://www.4devs.com.br/)
      - [JSON formatter](https://jsonformatter.org/)
      - [UUID Generator](https://www.uuidgenerator.net/version4)
      - [GitHub](https://github.com/)
      - [Docker](https://www.docker.com/)
      - [Replit](https://replit.com/)
      - [Figma](https://www.figma.com/)
      - [Notion](https://www.notion.so/)
      - [Trello](https://trello.com/)
      - [Excalidraw](https://excalidraw.com/)
      - [ChatGPT](https://chat.openai.com/auth/login)
    - My extensions:
      - [Window Resizer](https://chromewebstore.google.com/detail/kkelicaakdanhinjdeammmilcgefonfh)
      - [uBlock Origin](https://chromewebstore.google.com/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
      - [ColorZilla](https://chromewebstore.google.com/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp)
      - [GNOME Extensions](https://chromewebstore.google.com/detail/integra%C3%A7%C3%A3o-com-gnome-shel/gphhapmejobijbbhgpjhcjognlahblep)
        - GNOME extensions that I use:
          - [Vitals](https://extensions.gnome.org/extension/1460/vitals/)
          - [Audio Output Switcher](https://extensions.gnome.org/extension/751/audio-output-switcher/)

## Setting up programs - You can find my dotfiles [here](https://github.com/gnulll/dotfiles)
- [KeePassXC](https://keepassxc.org/) - Password manager
  - Install libfuse:
    - `sudo apt install libfuse2`
  - Download KeePassXC AppImage file.
  - To be able to execute KeePassXC give it permission to be executable.
  - I put all my appimages files in a folder called **AppImages** inside my **Documents** folder.
- Login into Google and online accounts.
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
- [net-tools](https://github.com/ecki/net-tools) - Basic network tools.
  - `sudo apt install net-tools -y`
- [Node.js](https://nodejs.org/en) - JavaScript runtime
  - Install Node.js via NVM [here](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
  - List Node versions with `nvm ls-remote`
  - Install a Node version with `nvm install <version>`
  - Change the current Node version with `nvm use node-<version>`
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
- [Visual Studio Code](https://code.visualstudio.com/)
  - Download the **.deb** file and install with `sudo dpkg -i <dev file>`
  - My extensions:
    - [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
    - [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight)
    - [Create](https://marketplace.visualstudio.com/items?itemName=hideoo.create)
    - [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
    - [EditorConfig for VSCode](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
    - [Identical Sublime Text Monokai theme](https://marketplace.visualstudio.com/items?itemName=maximetinu.identical-sublime-monokai-csharp-theme-colorizer)
    - [IntelliCode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode)
    - [JavaScript (ES6) code snippets](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets)
    - [json](https://marketplace.visualstudio.com/items?itemName=ZainChen.json)
    - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
    - [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
    - [MySQL](https://marketplace.visualstudio.com/items?itemName=cweijan.vscode-mysql-client2)
    - [PHP DocBlocker](https://marketplace.visualstudio.com/items?itemName=neilbrayfield.php-docblocker)
    - [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
    - [SCSS Formatter](https://marketplace.visualstudio.com/items?itemName=sibiraj-s.vscode-scss-formatter)
    - [SCSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-scss)
    - [Todo Tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree)
    - [Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
- [Postman](https://www.postman.com/) - HTTP client
  - Install postman: `tar -C /tmp/ -xzf <(curl -L https://dl.pstmn.io/download/latest/linux64) && sudo mv /tmp/Postman /opt/`
  - Create a desktop shortcut on `/usr/share/applications/postman.desktop`: 
    ```
    [Desktop Entry]
    Encoding=UTF-8
    Name=Postman
    Exec=/opt/Postman/Postman %U
    Icon=/opt/Postman/app/icons/icon.png
    Terminal=false
    Type=Application
    Categories=Development;
    ```
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
- [GIMP](https://www.gimp.org/) - Image editor
  - `sudo apt install gimp -y`

Easy Peasy Lemon Squeezy 👌
