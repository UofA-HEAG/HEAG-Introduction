# Installation Instructions

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


### Linux

Update your package manager by typing in the terminal:
```
sudo apt-get update
```

__sublime__  
Sublime is a text editor.
It is not necessarily needed, but I personally recommend it.   
* Download the tarball: https://sublimetext.com/3. 
* Unpack the tarball (`tar`), move it to the dedicated folder (`mv`) and create a symlink (`ln -s`). 
Therefore, type in the terminal:
```
tar -jxvf sublime_text_3_build_3143_x64.tar.bz2
sudo mv sublime_text_3 /opt/
ln -s /opt/sublime_text_3 /usr/local/bin/subl
```

__git__
Git is an open source version control software.
```
sudo apt-get install git
```

__make__
make is an automation tool to build executables and link libraries.
```
sudo apt-get install make
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
 

## Installation of latex
