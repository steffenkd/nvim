
# nvim
neovim_configuration_for writers_with_zettelkasten  

Because keyboard and text-editor are on par with the sword!  
And BigBlockBitcoin is the real Bitcoin!

Follow me on:   
[steffenkd](https://steffenkd.de)  
RSS available!

---------

VIDEO-TUTORIAL:   

Coming soon...

---------

FIRST:  

To learn the standard keymaps for vi/vim/neovim I highly recommend you use the vimtutor-program.  
On Linux just open a terminal ```Ctrl+Alt+t``` and enter the command ```vimtutor```.  
It starts a little program where you just have to follow the instructions.  
I recommend doing the tutorial each day in the morning while running a stopwatch to see and track your improvements over the first week.  
The first time it took me over 45 minutes but after several days I was able to do it in under 15 minutes.  
Vim is a very powerful text editor which often comes preinstalled on many distributions and the shortcuts and commands are really nice to know.  
Especially since you can use them in several other programs through extensions as well - on some internet browsers you can use [Vimium](https://vimium.github.io/) for example.  

---------

WHAT IS THIS?

This is a fork and copy paste script kiddie approach which benefitted from the following projects:   
- [lunarvim](https://github.com/LunarVim) from [chris@machine](https://github.com/ChristianChiarulli?tab=repositories)  
- [lazyvim](https://www.lazyvim.org/) from [folke](https://github.com/folke)  
- [theena's](https://theena.net/) writing implementation [OVI-Write](https://github.com/MiragianCycle/OVIWrite)  
Thank you very much!

This is a neovim implementation for writers, bloggers and zettelkasten enthusiasts.  
It has the following features:  
- markdown-browser-preview (toggle on/off).  
- light/dark-mode colorscheme (toggle on/off).  
- zettelkasten ability (the extension is called *telekasten*.   
- zenmode for distraction free writing (toggle on/off).  
- telescope fuzzy finder for searching.  
- spell check and adding unknown vocabulary (toggle on/off).    
- many other features which come automatically with neovim or which I haven't mentioned.  

---------

LINUX INSTALLATION:  

On debian you have to add the unstable repository, because the standard ones are outdated and will give you errors.  
```sudo add-apt-repository ppa:neovim-ppa/unstable```  
```sudo apt-get update```  
```sudo apt-get install neovim```  

On Fedora you can use the normal packages sinde they are up to date.  
```sudo dnf install neovim```

Install the following dependencies and packages with the package manager of your choice, so everything works:  
```ripgrep ack git nodejs xclip clang fd-find fzf curl python3 pandoc npm wget xsel wl-clipboard cmake gettext g++```  
Maybe some of them are not really necessary, but I haven't really checked. So better to install all of them.  

Set up neovim node support:  
```npm install -g neovim```

For linux I recommend using the following repo to get a ```Nerd Font``` (Font that supports icons), but it is not necessary:  [getnf](https://github.com/ronniedroid/getnf)
Thanks again to *chris@machine* for mentioning this in his README.  
On FreeBSD (unix) you can install nerdfonts via the pkg packet manager.  

If you already have another working nvim configuration you should backup the existing folder first or just rename it.  
Clone/copy the nvim repository/folder into your ```/home/.config``` folder so it looks like this: ```/home/.config/nvim/``` whereas the nvim-folder is the one from my github.  
Since you have already installed the ```git``` package you can also open the command line and enter:  
```git clone https://github.com/steffenkd/nvim ~/.config/nvim``` to clone the nvim configuration folder into ```/home/.config```.  
The ```.config``` folder is an invisible folder in your home directory and you can make this folder visible by pressing ```ctrl+h``` when you are in your home directory.  

Run neovim by opening a terminal, type ```nvim``` and hit ```Enter```.  
If you press ```F10``` you will have the terminal in Fullscreen.  


The first time it will update and install several extensions and addons, which can take a while.  
Update one more time afterwards by pressing ```Shift+U```.  
Close (```Shift+Z+Z```) and restart (typing ```nvim``` again) after everything has installed and updated.  
Run the command ```:checkhealth```, to see if there are any packages or dependencies you forgot to install or which I forgot to mention and install them with the package manager of your choice.

---------

GENERAL CONFIGURATION AND CUSTOMIZATION:  

Navigate into the ```/.config/nvim/``` folder.  
There should be a folder named ```vaults````.  
Cut this folder and insert it into your home folder, so that the *vaults* folder is in the same directory as the ```/.config``` folder.  
This is necessary for a working zettelkasten functionality.  
If you have understood how everything works, you can setup your own structure later if you want.  

In the nvim-Folder you will find a file named *init.lua*.  
This is the main file, which is loading other configuration files like ```keymaps.lua``` or ```autocommands.lua```.  
You can also edit it by pressing ```c``` in neovim at the beginning to access this configuration file like stated in the menu.  
When working with ```.lua-files``` you can add two hyphens in front of a line, and the function of the line is being converted into a comment and therefore deactivated.  
If you want to deactivate or activate larger parts like in ```colorscheme.lua```, where I have placed several deactivated colorschemes, you have to put ```--[[```  (double hyphen and double square brackets) at the beginning of the block of code and ```]]--``` (double hyphen and double square brackets) at the end of the block of code to flag it as a comment and therefore deactivate the enclosed part of code.  

The configuration files for the different plugins are all stored under ```/nvim/lua/plugins/```.  
Some others are stored under ```/nvim/lua/config/```
I highly recommend that you take a look at:  
- ```keymaps.lua``` to learn about the necessary shortcuts and key commands for toggle certain actions and commands and use the Zettelkasten features - or change them if you prefer other keymaps.  
- ```colorscheme.lua```  for activating/deactivating some other colorschemes, the current colorscheme has a light and a dark theme which can be changed by pressing ```Space``` followed by ```t``` followed by either ```d``` for dark or ```l``` for light.  
- ```alpha.lua``` is for the welcome-screen configuration file, where you have to change the Zettelkasten-folder-path, or change the cat ASCII-picture, the quote or add additional entries.  
If you made any changes, you have to restart nvim.
- ```telekasten.lua```  to configure the Zettelkasten plugin - later you can change the root folder for the Zettelkasten and create your own layout.  
Like already mentioned before, I have put a folder named ```vaults``` into the nvim configuration.
Cut it and paste it into your home directory and everything should work fine.
Some paths in the telekasten.lua file need to configured to fit your local setup, mainly your username.
We will use the power of neovim/vim to edit all those changes with just one command.
```:%s/yourusername/nowtypeyourusername/g```
This command replaces all yourusername occasions in the text with nowtypeyourusername and substitues it.
You will learn this command when you are doing the vimtutor tutorial.  

---------

KEYMAPS:  

- The most important key is the *leader key* which is mapped to "Space".  
- If you have several files/tabs open, press ```Shift+J``` or ```Shift+H``` to jump to the previous tab and ```Shift+K``` or ```Shift+L``` to go to the next tab.  
- Press ```Ctrl+6``` to switch between the last two tabs, quite convenient when you are editing two files.  
- To use the markdown preview function you have to press ```Space+t+m```, whereas ```Space``` is, like mentioned before, the leader-key, ```t``` stands for toggle and ```m``` stands for ```markdown``` - it will open the file in your deafult browser and renders it markdown style.  
- To toggle the zenmode for distraction free writing you have to press ```Space+t+z```, whereas ```Space``` is, again, the leader-key, ```t``` stands for toggle and ```z``` stands for "zenmode".  
- To toggle between nightmode/darkmode you have to press ```Space+t+l```, whereas ```l``` stands for "light", but it switches between both modes. 
- Press ```Space+e``` to open and close the foldertree view (NvimTree-toggle) on the left side of the window where you can navigate through the folders and files - use the normal nvim-keymaps ```jl``` for navigation and ```hl``` for moving up or down the folder structure (opening files).
- Toggle spell check ```Space+s+s```.
- If you want to add an unregonized word to the spell list, put the cursor over the word in visual mode and press ```zg```.
- If you want to save a file press ```Ctrl+s```.  
- If you want to save and close a file press ```Space+w``` whereas ```w``` stands for "write".
- If you just want to close a file without saving/writing press ```Space+q``` whereas ```q```stands for "quit".
- If you want to exit nvim after you have saved everything you either type ```q!``` and hit enter or you can type ```Shift+Z+Z```.  

Telescope file find/search keymaps:  
- ```Space+f+f``` search for a file.
- ```Space+f+g``` search for a word inside files.  
- ```Space+f+b``` telescope buffers.  

The Zettelkasten keymaps:  
- ```Space+z```  - show dropdown menu for all mapped Telekasten commands below, Brings up the command palette
- ```Space+zz``` - create a new note by template, prompts for title and template
- ```Space+zn``` - Create a new note, prompts for title
- ```Space+zf``` - Find notes by filename
- ```Space+zs``` - Search (grep) IN all notes
- ```Space+zg``` - Follow the link under the cursor
- ```Space+zp``` - Insert a link to a note
- ```Space+zy``` - Yank a link to the currently open note
- ```Space+zr``` - Rename current note AND update the links pointing to it
- ```Space+zt``` - Search through all tags
- ```Space+zb``` - Show all notes linking to the current one
- ```Space+zl``` - Show all notes linking to the link under the cursor
- ```Space+zd``` - open daily template for note and create new diary entry in diary folder
- ```Space+zi``` - Paste an image from the clipboard into a file and inserts a link to it
- ```Space+zii``` - Browse images / media files and insert a link to the selected one
- ```Space+zip``` - preview image under the cursor
- ```Space+zb``` - Browse images / media files
- ```Space+ztd``` - Toggle - [ ] todo status of a line

---------

If you have any improvements or recommendations which is quite likely, you can write me an e-mail.  
My contact information is available on my homepage under *about*.  
