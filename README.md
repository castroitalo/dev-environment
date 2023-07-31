<h1>Development Envorinment</h1>

<p>This is my personal development environment for Full-Stack development with LAMP Stack</p>

<ul>
	<li>Windows</li>
	<li>WSL</li>
	<li>Apache</li>
	<li>MySQL</li>
	<li>PHP</li>
	<li>HTML5/CSS3</li>
	<li>Bootstrap</li>
	<li>JavaScript (ES6)/jQuery</li>
</ul>

<a href="#my_tools">My tools</a>

<details>
<summary id="my_tools">My tools</summary>
<br>

 
- [Windows 10](https://www.microsoft.com/pt-br/software-download/windows10)
- [Mozilla Firefoz](https://www.mozilla.org/pt-BR/firefox/new/)
	- My favorites website 
		- [Trello](https://trello.com/pt-BR)
		- [Notion](https://www.notion.so/)
		- [GitHub](https://github.com/)
		- [Replit](https://replit.com/)
		- [StackEdit](https://stackedit.io/)
		- [Figma](https://www.figma.com/)
		- [Excalidraw](https://excalidraw.com/)
- [Visual Studio Code](https://code.visualstudio.com/)
    - My VSCode extensions: 
        - [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
        - [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks)
        - [PHP](https://marketplace.visualstudio.com/items?itemName=DEVSENSE.phptools-vscode)
        - [Draw.io Integration](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio)
        - [PHP DocBlocker](https://marketplace.visualstudio.com/items?itemName=neilbrayfield.php-docblocker)
        - [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
        - [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
        - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
        - [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
        - [SCSS Formatter](https://marketplace.visualstudio.com/items?itemName=sibiraj-s.vscode-scss-formatter)
        - [SCSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-scss)
        - [SQL Formatter](https://marketplace.visualstudio.com/items?itemName=adpyke.vscode-sql-formatter)
        - [Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
        - [WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)
- [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701)
- [Dbeaver](https://dbeaver.io/download/)
- [Notepad ++](https://notepad-plus-plus.org/)
</details>

## Basic Windows 10 configuration
<em>I use Windows 10 Home Edition.</em>
- Install your graphics card drivers.
- Execute [Win-Debloat-Tools](https://github.com/LeDragoX/Win-Debloat-Tools)
- Go to **Settings** >
	- **System** >
		- **Notifications & action**: disable every notification option.
		- **Focus assist**: select off. In <em>Automatic rules</em> section disable every option.
		- **Power & Sleep**: Put both in 'Never'.
		- **Multitasking**: Put every toggle in off. 
		- **Shared experiences**: Disable toggle option.
		- **Clipboard**: Disable 'Clipboard 
	- **Devices** > 
    - **Typing**: Disable every toggle option.
	- **Personalization** >
  	- **Background**: In the 'Background' option choose 'Solid color' and put it black.
		- **Colors**: This is personal preferences. I let it light.
		- **Start**: Disable every toggle options except for 'Show app list in Start Menu'
		- **Taskbar**: Disable every toggle option. In 'Combine taskbar buttons' dropdown option I like to let it as 'Never'.
	- **Apps** >
    - **Apps & features**: Uninstall every useless app such as xbox ones.
	- **Gaming**: Just disable everything you can.
    - **Privacy**: Disable everything you can as well.
- Delete `windows.old` folder before next step.
- Disable file indexing:
	- Open a File Explorer instance.
    - Click with the right button on the C:\ and choose 'Properties' option.
    - Disable the 'Allow files on the drive to have contents indexed in addition to file properties' checkbox option.
    - And apply, it can take a few minutes to finish.
- Create a **HOME** variable enviromment to you prefered path.
- Download and install the latest graphic card driver.
- Copy any backup that you have.
- Restart your PC.

## Programs to install before setting up
- Programs:
    - [Mozilla Firefoz](https://www.mozilla.org/pt-BR/firefox/new/)
	- [Dbeaver](https://dbeaver.io/download/)
	- [Notepad ++](https://notepad-plus-plus.org/)
	- [Visual Studio Code](https://code.visualstudio.com/)
	- [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701)

## Install WSL and Ubuntu ([docs here](https://learn.microsoft.com/en-us/windows/wsl/install))
- Before installing a distro follow [this](https://learn.microsoft.com/en-us/windows/wsl/install-manual#step-1---enable-the-windows-subsystem-for-linux) documentation
- Open powershell as admin and type the following command: `wsl --install`
- You can check the installed distro with: `wsl -l -v`

## Setting up Windows Terminal
- Download Windows Terminal in Microsoft Store.
- In the dropdown arrow click in **Settings**, then click in **Open JSON file**.
	- Add the following commands into the `profiles` section: ([guide](https://stackoverflow.com/questions/56846399/how-can-i-add-ubuntu-as-a-profile-option-in-windows-terminal))
		```
		{
			"guid": "{78e390db-1bff-4533-9d7c-20f53d8bafa1}",
			"name": "WSL",
			"colorscheme": "Campbell",
			"historySize": 9001,
			"snapOnInput": true,
			"cursorColor": "#FFFFFF",
			"cursorShape": "bar",
			"commandline": "wsl ~",
			"fontFace": "Consolas",
			"fontSize": 12,
			"acrylicOpacity": 0.75,
			"useAcrylic": true,
			"closeOnExit": false,
			"padding": "0, 0, 0, 0"
		}
		```

## Basic WSL configuration
- After installing Ubuntu for WSL open it.
- Update the system: `sudo apt update && sudo apt upgrade -y`
- Install git: `sudo apt install git -y`
    - Basic git settings: 
        - Username: `git config --global user.name <username>`
        - User email: `git config --global user.email <user email>`
        - Config default code editor (in my case I use VSCode): `git config --global core.editor code`
        - Generate a SSH key: `ssh-keygen -t rsa -b 4096 -C "<your email>"`
- Shell configuration:
	- Install curl: `sudo apt install curl -y`
	- Install ZSH: `sudo apt install zsh -y`
	- Make ZSH your defaultl shell: `chsh -s $(which zsh)`
	- Restar your computer. ZSH must be your default shell by now.
	- Install OhMyZSH ([docs here](https://ohmyz.sh/)): `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
	- Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions):
		- `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
		- Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
			```
			plugins=( 
				# other plugins...
				zsh-autosuggestions
			)
			```

## Setting up LAMP
### Installing and configuring Apache
- `sudo apt install apache2 -y`
- Check your installation by running `sudo service apache2 status` or opening `localhost:80` in your browser.
- Add read and write permission to apache folder: `sudo chown -R yourusername:yourusername /var/www/html`
- Apache settings:
    - Open: `sudo vim /etc/apache2/apache2.conf`
    - Write you username like: 
		```
		# These need to be set in /etc/apache2/envvars
		User yourusername
		Group yourusername
		```
	- Allow the use of **.htaccess** file:
		```
		<Directory /var/www/>
			Options Indexes FollowSymLinks
			AllowOverride All
			Require all granted
		</Directory>	
		```
	- Enable mod_rewrite: `sudo a2enmod rewrite`
    - Restart apache: `sudo service apache2 restart`
### Installing and configuring PHP:
- Install PHP:
	- Update  your system: `sudo apt update && apt upgrade -y`
	- Add PHP package from [ondrej](https://deb.sury.org/): `sudo add-apt-repository ppa:ondrej/php`
	- Update your packages: `sudo apt update`
	- Install PHP: `sudo apt install php8.2 -y`
	- Check your PHP version: `php --version`
	- Install PHP extensions:
 		- mysqli: `sudo apt install php8.2-mysqli`
   		- mb_string: `sudo apt install php8.2-mbstring`
- Install Composer: `sudo apt install composer -y`
- Install Xdebug:
	- Go to **/var/www/html** and create a **index.php** file with this: 
		```
		<?php 
		phpinfo();
		```
	- Open apache again and copy the whole page with Ctrl+a.
	- Go to [Xdebug Installation Wizard](https://xdebug.org/wizard).
	- And copy your phpinfo in the textbox.
	- Click in **Analyse my phpinfo() output** and follow the given instructions.
 	- Make Xdebug works:
  		- Open php.ini: `sudo vim /etc/php/8.2/apache2/php.ini`
    		- And make sure the settings is like this:
      		```
        	display_errors = On
			display_startup_errors = On
			error_reporting = E_ALL
        	``` 
### Installing and configuring MySQL:
- Install MySQL and make it be accessible in windows:
	- Update your system packages: `sudo apt update && sudo apt upgrade -y`
	- Install MySQl server: `sudo apt install mysql-server -y`
	- Start MySQL service: `sudo /etc/init.d/mysql start`
	- Changing root privileges:
		- Entern MySQL CLI: `sudo mysql`
		- In MySQL CLI type:
			- `ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'yourpassword';`
			- `FLUSH PRIVILEGES;`
    	- Install secure MySQL: `sudo mysql_secure_installation -p`
    	- Enter your password and answer the questions like this:
			- **n**
			- **n**
			- **y**
			- **n**
			- **n**
			- **y**
        - If you try to enter in MySQL CLI it won't work, you need to use thid command now: `sudo mysql -u root -p`
		- Allow MySQL port to windows: 
			- `sudo nano /etc/mysql/my.cnf`
			- At the end of file add this: 
				```
				[mysqld]
				port=33061
				```
    		- Save and close.
    - Restart MySQL service: `sudo service mysql restart`
    - Update MySQL defaults: `sudo update-rc.d mysql defaults`
    - Now you're good to connect to MySQL with windows installed SGDB's. With this setup you don't need to worry about WSL ip address.
### Setting up aliases:
- Open you shell configuration file and add this and the bottom:
	```
	# General aliases
	alias update="sudo apt update && sudo apt upgrade -y"
	alias open="explorer.exe"
	alias prj="cd /var/www/html"

	# Apache aliases
	alias apache_start="sudo service apache2 start"
	alias apache_stop="sudo service apache2 stop"
	alias apache_restart="sudo service apache2 restart"
	alias apache_status="sudo service apache2 status"
	alias apache_log="cat /var/log/apache2/access.log"

	# MySQL aliases
	alias mysql_start="sudo service mysql start"
	alias mysql_stop="sudo service mysql stop"
	alias mysql_restart="sudo service mysql restart"
	alias mysql_status="sudo service mysql status"	
	```
- Restart your shell.
### Setting up Visual Studio Code:
- Download and Install [Visual Studio Code](https://code.visualstudio.com/).
- Open it, the first thing you need to do is install the [WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) extension to connect to the WSL.
- Type `code .` in any directory and install the rest of the extensions.
- After installing all extensions copy and paste the [settings.json](https://github.com/devcastroitalo/Development-environment/blob/main/VisualStudioCode/settings.json) file to yours.
- Andn the [keybindings.json](https://github.com/devcastroitalo/Development-environment/blob/main/VisualStudioCode/keybindings.json) to yours as well.

Easy Peasy Lemon Squeezy 👌
