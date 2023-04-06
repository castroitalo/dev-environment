# Development environment

<p style="text-align: center">This is my personal development enviroment setup.</p>

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
        - [Meta Pixel Helper](https://chrome.google.com/webstore/detail/meta-pixel-helper/fdgfkebogiimcoedlicjlajpkdmockpc)
        - [Tag Assistant Legacy (by Google)](https://chrome.google.com/webstore/detail/tag-assistant-legacy-by-g/kejbdjndbnbjgmefkgdddjlbokphdefk?hl=pt-br)
        - [ColorZilla](https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp?gclid=EAIaIQobChMIxLmy96jt-wIVI0FIAB33mwoDEAAYASAAEgJrqPD_BwE)
- [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701)
- [PHP](https://www.php.net/downloads)
- [Emacs](https://www.gnu.org/software/emacs/)
	- MELPA extensions
    	- [php-mode](https://github.com/emacs-php/php-mode)
        - [counsel-etags](https://github.com/redguardtoo/counsel-etags#install)
        - [emmet-mode](https://github.com/smihica/emmet-mode)
- [Git](https://git-scm.com/)
- [MariaDB](https://mariadb.org/download/?t=mariadb&p=mariadb&r=10.11.2&os=windows&cpu=x86_64&pkg=msi&m=fder)
- [Dbeaver](https://dbeaver.io/download/)
- [Draw.io - Desktop version](https://www.diagrams.net/)
- [XAMPP](https://www.apachefriends.org/download.html)

## Setting up tools 
### Basic Windows 10 configuration
- I use Windows 10 Home Edition.
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
- Disable file indexing:
	- Open a File Explorer instance.
    - Click with the right button on the C:\ and choose 'Properties' option.
    - Disable the 'Allow files on the drive to have contents indexed in addition to file properties' checkbox option.
    - And apply, it can take a few minutes to finish.
- Create a **HOME** variable enviromment to you prefered path.
- Download and install the latest graphic card driver.
- Copy any backup that you have.
- Restart your PC.

### Installing PHP
- Go to [PHP official website](https://www.php.net/) and download the latest zipped version.
- Extract the zip file and cut it to **Program Files** folder.
- Create a variable enviromment to PHP.
- Test it running a <em>Hello World</em> in your cmd.

### Setting up Emacs 
- Download Emacs zip file here [here](http://ftp.gnu.org/gnu/emacs/windows/)
- Extract the zip file and cut it to **Program Files** folder in your `C:\`.
- Open `init.el` file (this file is in your `HOME` path that you defined earlier).
- Copy the content inside the `init.el` file in this repo.
- Close and open the Emacs and wait for the `init.el` file be executed for the first time.
- Install prefered MELPA extensions.

### Setting up git
- Download Git [here](https://git-scm.com/) and install it.
- Open **Git Bash** and setup up basic git info: 
	- Username: `git config --global user.name <username>`
    - User email: `git config --global user.email <user email>`
    - Default editor (in my case I'm gonna set it to emacs): `git config --global core.editor emacs`
    - Generate a SSH key: `ssh-keygen -t rsa -b 4096 -C "<your email>"`
- Copy your generated SSH key in `C:\Users\Username\.ssh\id_rsa.pub`.

### Setting up Windows Terminal
- Download Windows Terminal in Microsoft Store.
- In the dropdown arrow click in **Settings**, then click in **Open JSON file**.
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

### Setting up XAMPP
- Download and install [XAMPP](https://www.apachefriends.org/download.html)
- Add [Xdebug](https://xdebug.org/) extension to XAMPP:
  - Start Apache on XAMPP and access http://localhost/dashboard/ in your browser.
  - Go to the PHPInfo page and select and copy all page.
  - Go to [Xdebug Installation Wizard](https://xdebug.org/wizard), paste the copied page in textarea and click on **Analyse my phpinfo() output** button to get the correct Xdebug file.
  - Follow the given instructions
- Install an SSL certificate to use **https**:
  - Go to `C:\xampp\apache` directory and create a `domains.ext` file.
  - Copy the following text inside the `domain.ext` file:
	```
	authorityKeyIdentifier=keyid,issuer  
	basicConstraints=CA:FALSE  
	keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment  
	subjectAltName = @alt_names  
	[alt_names]  
	DNS.1 = localhost  
	DNS.2 = www.localhost
	```
  - Go to `C:\xampp\apache` and open the `makecert.bat` file with a text editor.
  - At the end of `...server.key -days 365` line add the following command:
    - `-sha256 -extfile domains.ext`  
  - Execute the `makecert.bat` file, answer just the following questions and skip the rest with the RETURN button:
    - `Enter PEM pass phrase:` (a secure password)
    - `Verifying - Enter PEM pass phrase:` (retype the password)
    - `Country Name (2 letter code) [AU]:` (your country code)
    - `Common Name (e.g. server FQDN or YOUR name) []:` (answer with **localhost**)
    - `Enter pass phrase for privkey.pem:` (your password)
  - Go to `C:\xampp\apache\conf\ssl.crt` and execute the `.crt` file.
    - In the **Certificate Store** section select the **Place all certificates in the following store** and choose **Trusted Root Certification Authorities**



