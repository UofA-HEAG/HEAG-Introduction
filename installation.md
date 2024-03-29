# Installation Instructions

Note: The Linux instructions are assuming Ubuntu. 
Alternative distributions are equipped with different package managers.
Replace `apt-get` with the corresponding manager.

# General Stuff

### MacOS
MacOS comes with a terminal. 
Search for "terminal" in spotlight. 
It might be useful to add the terminal to your dock.
(Right-click on the app's icon -> Options -> Keep in dock)

__sublime__  
Sublime is a text editor.
It is not necessarily needed, but I personally recommend it.   
* Download the tarball: https://sublimetext.com/3
* Install it by double-clicking on it
* Create a symlink by typing in the terminal:
```
ln -s "Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

__Commad Line Tools__ 
The command line tools are very useful and necessary for the following tools. 
They comprise git, a C/C++ compiler and more.  
For their installation, type the following in the terminal:
```
xcode-select --install
```

__git__  
Git is an open source version control software.
It is installed via the command line tools.
To configure, type in the terminal:
```
git config --global user.name "Albert Einstein"
git config --global user.email "albert.einstein@adelaide.edu.au"
git config --global pull.rebase true
git config --global rebase.stat true
git config --global merge.conflictstyle diff3
```


### Linux

Update your package manager by typing in the terminal:
```
sudo apt-get update
```

__sublime__  
Sublime is a text editor.
It is not necessarily needed, but I personally recommend it.   
* Go here: https://sublimetext.com/3. 
* Follow the instructions

__git__  subl
Git is an open source version control software.
To install, type in the terminal:
```
sudo apt-get install git
```
To configure, type in the terminal:
```
git config --global user.name "Albert Einstein"
git config --global user.email "albert.einstein@adelaide.edu.au"
git config --global pull.rebase true
git config --global rebase.stat true
git config --global merge.conflictstyle diff3
```

__make__  
make is an automation tool to build executables and link libraries.
```
sudo apt-get install make
```

__curl__  
```
sudo apt-get install curl
```


## Installation of python
I strongly recommend to use python via anaconda. Therefore, I will describe the installation of python via anaconda in the following.

#### MacOS
-	Download the Graphical Installer of anaconda 3.7 from https://www.anaconda.com/download/#macos
-	Follow the instructions

#### Linux
-	Download anaconda 3.7 from https://www.anaconda.com/download/#linux
-	In terminal:

```
bash Anaconda3-*-Linux-*.sh
<Enter>
yes
~/.local/anaconda3
yes
```
-	Restart terminal

#### Update (for both MacOS and Linux)
-	In terminal:
`conda update anaconda`
 

## Installation of LaTeX

### MacOS

* Download MacTeX from here: http://tug.org/cgi-bin/mactex-download/MacTeX.pkg
* Double-click the downloaded file to install it. Follow the instructions.

Configure the TeXLive manager:
```
sudo tlmgr option autobackup -- -1
sudo tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
```

Update TeXLive:
```
sudo tlmgr update --self --all --reinstall-forcibly-removed
```

### Linux

Type in terminal:
```
cd ~/.local
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz
TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl
```

Open `~/.bashrc` (for example with _sublime_ or _vi_) and add the following line:
```
export PATH="$HOME/.local/texlive/2018/bin/x86_64-linux:$PATH"
```

Configure the TeXLive manager:
```
tlmgr option autobackup -- -1
tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
```

Update TeXLive:
```
tlmgr update --self --all --reinstall-forcibly-removed
```

## Test Your Installation

In the terminal, try the following commands:

* `git` (git help should show up)
* `make` (_make: *** No targets specified and no makefile found. Stop._ should show up.)
* `python` (Interactive python  session should start up and the prompt is specifying your python version. Exit with `exit()`)
* `luatex` (_This is LuaTeX, Version 1.07.0 (TeX Live 2018) 
 restricted system commands enabled._ should show up. Exit with `ctrl-c`.)
 * `biber` (biber help should show up.)
