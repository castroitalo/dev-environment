# Development environment 

<p>This is my personal development enviroment setup for Full Stack Development with PHP - Using LAMP with WSL</p>
<ul>
	<li>Windows</li>
	<li>Apache</li>
	<li>MySQL</li>
	<li>PHP</li>
	<li>HTML5</li>
	<li>CSS3</li>
	<li>jQuery</li>
	<li>Bootstrap</li>
</ul>

## My tools 
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
- [Neovim](https://neovim.io/)
- [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701)
- [Dbeaver](https://dbeaver.io/download/)
- [XAMPP](https://www.apachefriends.org/pt_br/download.html)
- [Notepad ++](https://notepad-plus-plus.org/)

## Setting up tools (In Windows)
### Basic Windows 10 configuration
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

### Installing stuff before setting up
- Programs:
	- [Google Chrome](https://www.google.com/chrome/)
	- [Dbeaver](https://dbeaver.io/download/)
	- [Notepad ++](https://notepad-plus-plus.org/)
	- [Visual Studio Code](https://code.visualstudio.com/)
	- [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701)
	- [Git](https://git-scm.com/)

### Install WSL and Ubuntu ([docs here](https://learn.microsoft.com/en-us/windows/wsl/install))
- Open powershell as admin and type the following command: `wsl --install`
- Now go to Microsoft Store and search for **Ubuntu** and install it.
- You can check the installed distro with: `wsl -l -v`

### Setting up Windows Terminal
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

## Setting up tools (In WSL - Ubuntu)
- After installing Ubuntu for WSL open it.
- Update the system: `sudo apt update && sudo apt upgrade -y`
- Install git: `sudo apt install git -y`
    - Basic git settings: 
        - Username: `git config --global user.name <username>`
        - User email: `git config --global user.email <user email>`
        - Config default code editor (in my case I use VSCode): `git config --global core.editor "nvim"`
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
- Setting up LAMP:
	- Install Apache: 
		- `sudo apt install apache2 -y`
		- You check the installation with: `sudo service apache2 status`
	- Install PHP:
		- `sudo apt update && apt upgrade -y`
		- `sudo add-apt-repository ppa:ondrej/php`
		- `sudo apt update`
		- `sudo apt install php8.2 -y`
		- `php --version`
	- Install Composer: 
		- `sudo apt install composer -y`
	- Add read and write permission to apache folder: `sudo chown -R yourusername:yourusername /var/www/html`
	- Set you user to apache: 
		- `sudo nano /etc/apache2/apache2.conf`
		- Write you username like: 
		```
		# There need to be set in /etc/apache2/envvars
		User yourusername
		Group yourusername
		```
		- Restart apache: `sudo service apache2 restart`
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
	- Install MySQL and make it be accessible in windows:
		- Update your system packages: `sudo apt update && sudo apt ugprade -y`
		- Install MySQl server: `sudo apt install mysql-server -y`
		- Start MySQL service: `sudo /etc/init.d/mysql start`
		- Changing root privileges:
			- Entern MySQL CLI: `sudo mysql`
			- In MySQL CLI type:
				- `ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'yourpassword';`
				- `FLUSH PRIVILEGES;`
			- Install secure MySQL: 
				- `sudo mysql_secure_installation -p`
				- Entern your password.
				- Answer quations in this order:
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
- Define shell alias: 
	- Open your shell configuration file, in my case **.zshrc** and put this lines at the end of file: 
	```
        alias open="explorer.exe"
        alias update="sudo apt update && sudo apt upgrade -y"
	```
	- The **open** open the windows file explorer, it needs a second argument, the path to open.
	- The **update** update system packages and ugprade them.
	- After that just restart your shell.
- Setting up Neovim 
    - Download my `nvim` folder and go to `packer.lua` file and execute:
        - `Esc + :so`
        - `Esc + :PackerSync`
    - Close and Open neovim again and it's all good


## Easy Peasy Lemon Squeezy 👌
