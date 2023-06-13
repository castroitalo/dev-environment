# Development environment (IN PROGRESS)

<p style="text-align: center">This is my personal development enviroment setup for backend development:</p>
<ul>
	<li>Node.js</li>
	<li>MySQL</li>
	<li>TypeScript</li>
	<li>Git</li>
	<li>Docker</li>
</ul>

## My tools 
- [Ubuntu](https://ubuntu.com/download)
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
		- [Meta Pixel Helper](https://chrome.google.com/webstore/detail/meta-pixel-helper/fdgfkebogiimcoedlicjlajpkdmockpc)
		- [Tag Assistant Legacy (by Google)](https://chrome.google.com/webstore/detail/tag-assistant-legacy-by-g/kejbdjndbnbjgmefkgdddjlbokphdefk?hl=pt-br)
		- [ColorZilla](https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp?gclid=EAIaIQobChMIxLmy96jt-wIVI0FIAB33mwoDEAAYASAAEgJrqPD_BwE)
- [Visual Studio Code](https://code.visualstudio.com/)
    - My VSCode extensions: 
        - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
        - [JavaScript and TypeScript Nightly](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-typescript-next)
        - [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
        - [Draw.io Integration](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio)
        - [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
        - [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [Git](https://git-scm.com/)
- [Dbeaver](https://dbeaver.io/download/)
- [Insomnia](https://insomnia.rest/)

## Setting up tools 
### Basic Ubuntu configuration
<em>In this case I'm using Ubuntu 22.04 Jellyfish</em>
- Settings:
    - Set Google DNS.
	- Appearence:
    	- Setup dark mode.
    	- In **Configure dock behavior** unmark the **Show Volumes and Devices** options.
  	- Display:
      	- Setup max Hz in your monitor.
      	- And select the **Fractional Scaling** option.
  	- Setup a user image.
- Update the system: `sudo apt update && sudo apt upgrade -y`
- Instal NVIDIA drivers on **Additional drivers** app.
- Enable minimize apps on click: `gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'`
- Install gnome extensions:
    - On Ubuntu: `sudo apt install chrome-gnome-shell`
    - On web browser: [GNOME Extensions](https://extensions.gnome.org/)
- Install GNOME Tweaks: `sudo apt install gnome-tweaks -y`
- Install VLC: `sudo apt install vlc -y`
- Install curl: `sudo apt install curl -y`
- Install Node.js:
    - `curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -`
    - `sudo apt install nodejs -y`


### Setting up git
- Download Git [here](https://git-scm.com/) and install it.
- Open **Git Bash** and setup up basic git info: 
	- Username: `git config --global user.name <username>`
	- User email: `git config --global user.email <user email>`
	- Config default code editor (in my case I use VSCode): `git config --global core.editor code`
	- Generate a SSH key: `ssh-keygen -t rsa -b 4096 -C "<your email>"`
- Copy your generated SSH key in `C:\Users\Username\.ssh\id_rsa.pub` and paste in your GitHub account.

### Setting up Docker 
- Guide [here](https://docs.docker.com/engine/install/ubuntu/)
- Setup the repository: 
    - `sudo apt-get update`
    - `sudo apt-get install ca-certificates curl gnupg`
    - `sudo install -m 0755 -d /etc/apt/keyrings`
    - `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg`
    - `sudo chmod a+r /etc/apt/keyrings/docker.gpg`
    - ```
		echo \
			"deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
			"$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
			sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 
	```
- Install Docker Engine: 
    - `sudo apt-get update`
    - `sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`
- You can test the installation running: `sudo docker run hello-world`