<h1>Development Envorinment</h1>

<p>This is my personal development environment</p>

## My tools
- [ubuntu](https://ubuntu.com/download)
- [Google Chrome](https://www.google.com/chrome/)
	- My favorites website 
		- [Trello](https://trello.com/pt-BR)
		- [Notion](https://www.notion.so/)
		- [GitHub](https://github.com/)
		- [Replit](https://replit.com/)
		- [StackEdit](https://stackedit.io/)
		- [Figma](https://www.figma.com/)
		- [Excalidraw](https://excalidraw.com/)
	- My Chrome extensions: 
		- [HTML5 Outliner](https://chrome.google.com/webstore/detail/html5-outliner/afoibpobokebhgfnknfndkgemglggomo)
		- [Window Resizer](https://chrome.google.com/webstore/detail/window-resizer/kkelicaakdanhinjdeammmilcgefonfh)
- [Visual Studio Code](https://code.visualstudio.com/)
	- My VSCode extensions: 
		- [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
		- [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks)
		- [Draw.io Integration](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio)
		- [JavaScript (ES6) code snippets](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets)
		- [Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
		- [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
		- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
		- [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
		- [PHP DocBlocker](https://marketplace.visualstudio.com/items?itemName=neilbrayfield.php-docblocker)
		- [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
		- [SCSS Formatter](https://marketplace.visualstudio.com/items?itemName=sibiraj-s.vscode-scss-formatter)
		- [SCSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-scss)
- [Terminator](https://github.com/gnome-terminator/terminator)
- [Dbeaver](https://dbeaver.io/download/)

## Basic Ubuntu configuration
- Settings:
    - Network: Setup google DNS
    - Power: 
        - Power Mode: Performance
        - Power Saving Options: 
            - Screen Blank: Never
    - Displays:
        - Fractional Scaling: enabled
        - Refresh Rate: max possible
- If tou have Nvidia graphics card you need to install nvidia drivers, you can do it in **Additional Drivers** and select the driver you prefer.
- Enable minimize apps in dock with an click:
    - `gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'`
- Install GNOME extensions:
    - `sudo apt install chrome-gnome-shell`
    - You can get the browser extension [here](https://extensions.gnome.org/) (required to use GNOME extensions)
- Install GNOME tweaks:
    - `sudo apt install gnome-tweaks -y`
    - Inside GNOME tweaks:
        - windows:
            - Center New Windows: enabled

## Installing programs
<em>This is all my softwares, not just for development</em>
- [Google Chrome](https://www.google.com/chrome/) - Web browser
- Uninstall snap Firefox:
    - `sudo snap remove firefox`
- [curl](https://curl.se/) - CLI for transferring data
- [Terminator](https://github.com/gnome-terminator/terminator) - Terminal Emulator
    - `sudo apt install terminator -y`
- [qBittorrent](https://www.qbittorrent.org/download) - Torrent client
- [Spotify](https://www.spotify.com/br-pt/download/linux/) - Music Player
- [Vim](https://www.vim.org/) For fast editing - Editor for fast editing
    - `sudo apt install vim -y`
- [Dbeaver](https://dbeaver.io/download/) - SQL client
- [tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer
    - `sudo apt install tmux -y`
- [htop](https://github.com/htop-dev/htop) - Process viewer
    - `sudo apt install htop -y`
- [net-tools](https://github.com/ecki/net-tools) - Basic network tools
    - `sudo apt install net-tools -y`
- [Git](https://git-scm.com/) - Versioning tool
    - `sudo apt install git -y`
    - `git config --global user.name <username>`
    - `git config --global user.email <email>`
    - `git config --global core.editor <editor>`
    - `ssh-keygen -t rsa -b 4096 -C <email>`
- [ZSH](https://www.zsh.org/) - Shell
    - `sudo apt install zsh -y`
    - `chsh -s $(which zsh)`
    - Restart you computer
- [OhMyZsh](https://ohmyz.sh/) - ZSH framework
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

## Setting up VSCode
- Copy the **settings.json** and **keybindings.json** file to your VSCode.
- Install the extensions mentioned above.

##  Setting up aliases:
- Open you shell configuration file and add this and the bottom:
    ```
    # General aliases
    alias update="sudo apt update && sudo apt upgrade -y"
    alias open="nautilus"

    # Disable caps lock
    setxkbmap -option ctrl:nocaps

    # tmux aliases
    alias tnew="tmux new -s"
    alias tls="tmux ls"
    alias tk="tmux kill-session -t"
    alias tatt="tmux attach-session -t"
    ```
- Restart your shell.

Easy Peasy Lemon Squeezy 👌
