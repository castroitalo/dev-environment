# Development Environment

<p>This is my personal development environment configuration.</p>

## Basic [Ubuntu](https://ubuntu.com/download) configuration:

- Configure your system on GNOME settings.
    - Setup Google DNS: `8.8.8.8`
    - Remove screen sleep.
    - Change display settings for your monitor.
    - Customize keyboard shortcuts
- Enable minimize on Dock Click: `gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'`
- Install Codecs and Microsoft fonts: `sudo apt install ubuntu-restricted-extras`
- Install GNOME extensions: `sudo apt install chrome-gnome-shell`
- Install GNOME tweaks: `sudo apt install tweaks -y`
- Setup firewall: `sudo apt install ufw -y && sudo ufw enable`

## Setting up programs - You can find my dotfiles [here](https://github.com/gnulll/dotfiles)

- [KeePassXC](https://keepassxc.org/) - Password manager
    - Install libfuse:
        - `sudo apt install libfuse2`
    - Download KeePassXC AppImage file.
    - To be able to execute KeePassXC give it permission to be executable.
    - I put all my appimages files in a folder called **AppImages** inside my **Documents** folder.
- Login into Google Chrome account and all the online accounts.
- [Git](https://git-scm.com/) - Versioning tool.
    - `sudo apt install git -y`
    - `git config --global user.name <username>`
    - `git config --global user.email <user_email>`
    - `git config --global core.editor code`
    - Generate SSH key for GitHub: `ssh-keygen -t rsa -b 4096 -C`
- [curl](https://curl.se/) - CLI for transferring data: `sudo apt install curl -y`
- [tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer: `sudo apt install tmux -y`
- [htop](https://github.com/htop-dev/htop) - Process viewer: `sudo apt install htop -y`
- [Node.js](https://nodejs.org/en) - JavaScript runtime.
    - Install Node.js via NVM [here](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
    - List Node versions with `nvm ls-remote`
    - Install a Node version with `nvm install <version>`
    - Change the current Node version with `nvm use node-<version>`
- [Docker](https://www.docker.com/) - Developing platform. Official documentation for Debian
  installation [here](https://docs.docker.com/engine/install/debian/)
- [DBeaver](https://dbeaver.io/download/) - Database manager.
    - Download **.deb** file and install it with: `sudo dpkg -i <deb_file>`
- [qBittorrent](https://www.qbittorrent.org/download) - Torrent client: `sudo apt install qbittorrent -y`
- [Spotify](https://www.spotify.com/br-pt/download/linux/) - Music Player.
    - `curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg`
    - `echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list`
    - `sudo apt-get update && sudo apt-get install spotify-client`
- [OBS-Studio](https://obsproject.com/pt-br/download) - Open Broadcast Software: `sudo apt install obs-studio`
- [VLC](https://www.videolan.org/vlc/index.pt_BR.html) - Media player: `sudo apt install vlc -y`
- [GIMP](https://www.gimp.org/) - Image editor: `sudo apt install gimp -y`
- [ZSH](https://www.zsh.org/) - Shell.
    - `sudo apt install zsh -y`
    - `chsh -s $(which zsh)`
    - Reboot.
    - [OhMyZsh](https://ohmyz.sh/)
        - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
        - Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) plugin:
            - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
- [PHPStorm](https://www.jetbrains.com/pt-br/phpstorm/) - IDE
    - Download the **tar.gz** file.
    - Extract the **tar.gz** file inside **/opt** folder:
        - `sudo tar -xzf PhpStorm-*.tar.gz -C /opt`
    - Esecute the **phpstorm.sh** file.
    - Create a desktop entry clicking on gear button on the **Welcome** screen.
    - My plugin:
        - [IdeaVim](https://plugins.jetbrains.com/plugin/164-ideavim)
        - [IdeaVim-EasyMotions](https://plugins.jetbrains.com/plugin/13360-ideavim-easymotion)
        - [AceJump](https://plugins.jetbrains.com/plugin/7086-acejump)
        - [PHP Annotations](https://plugins.jetbrains.com/plugin/7320-php-annotations)
        - [.env files support](https://plugins.jetbrains.com/plugin/9525--env-files-support)
        - [Php Inspections (EA Extended)](https://plugins.jetbrains.com/plugin/7622-php-inspections-ea-extended-)
        - [PHPUnit Enhancement](https://plugins.jetbrains.com/plugin/9674-phpunit-enhancement)
- [Postman](https://www.postman.com/) - HTTP client
    - Install
      postman: `tar -C /tmp/ -xzf <(curl -L https://dl.pstmn.io/download/latest/linux64) && sudo mv /tmp/Postman /opt/`
    - Create a desktop shortcut:
      ```
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

Easy Peasy Lemon Squeezy 👌
