# Development environment 

<p>This is my personal development enviroment setup for Full Stack Development with PHP</p>
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
        - [PHP](https://marketplace.visualstudio.com/items?itemName=DEVSENSE.phptools-vscode)
        - [Draw.io Integration](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio)
        - [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
        - [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
        - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
        - [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
        - [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
        - [SCSS Formatter](https://marketplace.visualstudio.com/items?itemName=sibiraj-s.vscode-scss-formatter)
        - [SCSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-scss)
        - [SQL Formatter](https://marketplace.visualstudio.com/items?itemName=adpyke.vscode-sql-formatter)
        - [Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
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

### Setting up VSCode
- After installed VSCode go to this **VisualStudioCode** folder and copy the **settings.json** to your **settings.json** file. Same thing to **keybindings.json** file.
- Install the extensions above and open some folder inside WSL with `code .`

### Setting up Git and Windows Terminal
- Download Git [here](https://git-scm.com/) and install it.
- Open **Git Bash** and setup up basic git info: 
	- Username: `git config --global user.name <username>`
	- User email: `git config --global user.email <user email>`
	- Config default code editor (in my case I use VSCode): `git config --global core.editor code`
	- Generate a SSH key: `ssh-keygen -t rsa -b 4096 -C "<your email>"`
- Copy your generated SSH key in `C:\Users\Username\.ssh\id_rsa.pub` and paste in your GitHub account.
- Open Windows Terminal. In the dropdown arrow click in **Settings**, then click in **Open JSON file**.
	- Add the following commands into the `profiles` section: ([guide](https://stackoverflow.com/questions/56839307/adding-git-bash-to-the-new-windows-terminal))
	```
	{
		"guid": "{00000000-0000-0000-ba54-000000000002}",
		"commandline": "%PROGRAMFILES%/Git/usr/bin/bash.exe -i -l",
		// "commandline": "%USERPROFILE%/AppData/Local/Programs/Git/bin/bash.exe -l -i",
		// "commandline": "%USERPROFILE%/scoop/apps/git/current/usr/bin/bash.exe -l -i",
		"icon": "%PROGRAMFILES%/Git/mingw64/share/git/git-for-windows.ico",
		// "icon": "%USERPROFILE%/AppData/Local/Programs/Git/mingw64/share/git/git-for-windows.ico",
		// "icon": "%USERPROFILE%/scoop/apps/git/current/usr/share/git/git-for-windows.ico",
		"name" : "Bash",
		"startingDirectory" : "%USERPROFILE%"
	},
	```

### Setting up XAMPP (I just use XAMPP for MySQL)
- Download and install [XAMPP](https://www.apachefriends.org/download.html)
- Add [Xdebug](https://xdebug.org/) extension to XAMPP:
	- Start Apache on XAMPP and access http://localhost/dashboard/ in your browser.
	- Go to the PHPInfo page and select and copy all page with Ctrl + a.
	- Go to [Xdebug Installation Wizard](https://xdebug.org/wizard), paste the copied page in textarea and click on **Analyse my phpinfo() output** button to get the correct Xdebug file.
	- Follow the given instructions

### Setting up Composer 
- Get Composer [here](https://getcomposer.org/).
- Click in download and download the **Composer-setup.exe**.
- Mark the developer mode checkbox. 
- And install clicking **next** until the end of installation.
- Restart your computer.
- You can test the installation typing `composer` on terminal.

## Easy Peasy Lemon Squeezy 👌
