# nvim
neovim_configuration_for writers_with_zettelkasten


This is a fork and copy paste script kiddie approach which benefitted from the following projects which I want to mention to give credit to and to thank them:  
- [lunarvim](https://github.com/LunarVim) from [chris@machine](https://github.com/ChristianChiarulli?tab=repositories)
- [lazyvim](https://www.lazyvim.org/) from [folke](https://github.com/folke)
- [theena's](https://theena.net/) writing implementation [OVI-Write](https://github.com/MiragianCycle/OVIWrite)

It is a neovim implementation for writers, bloggers and zettelkasten enthusiasts.  
It has:  
- zenmode focused writing
- markdown-browser-preview  
- light/dark-mode  
- zettelkasten ability (the extension is called *telekasten*) 
- many other features which come automatically with neovim  

On Linux install the following packages so everything works fine:  
```neovim ripgrep ack git nodejs xclip clang fd-find fzf curl```

Set up neovim node support:  
```npm install -g neovim```

I recommend using the following repo to get a ```Nerd Font``` (Font that supports icons), but it is not necessary:  [getnf](https://github.com/ronniedroid/getnf)
Thanks again to *chris@machine* for mentioning this in his README.  

If you already have another working nvim configuration you should backup the existing folder first or just rename it.  
Clone/copy the nvim repository/folder into your ```/home/.config``` folder so it looks like this: ```/home/.config/nvim/```.  
Since you have already installed the ```git``` package you can also open the command line and enter:  
```git clone https://github.com/steffenkd/nvim ~/.config/nvim``` to clone the nvim configuration folder into /home/.config.  
The .config folder is an invisible folder in your home directory and you can make this folder visible by pressing ```Ctrl+h```.  

Run neovim in the terminal with the command:  
```nvim```

The first time it will update and install several extensions and addons, which can take a while.  
Update one more time afterwards by pressing ```Shift+U```.  
Close (```Shift+Z+Z```) and restart (typing ```nvim``` again) after everything has installed and updated.  
Run the command ```:checkhealth```, to see if there are any packages or dependencies you forgot to install.  

In the nvim-Folder you will find a file named *init.lua*.  
This is the main file, where you can activate or deactivate certain extensions/plugins and which is loading other configuration files like *keymaps* or *colorschemes*.  
You can also edit it by pressing ```c``` in neovim at the beginning to access this configuration file like stated in the menu.  
Activation or deactivation of certain functions can be made by either add or remove the commentary flags ```--``` (double hyphen) in front of a line.  
So if you add two hyphens in front of a line, the function of the line is being converted into a comment and therefore deactivated.  
If you want to deactivate or activate larger parts like in ```colorscheme.lua``` you have to put ```--[[```  (double hyphen and double square brackets) at the beginning of the block of code and ```]]--``` (double hyphen and double square brackets) at the end of the block of code to indicate it as a comment and therefore deactivate the part.  

The configuration files are all stored in ```/nvim/lua/user/```.  
I highly recommend that you take a look at:  
- ```keymaps.lua``` to learn about the necessary shortcuts and key commands for toggle actions and use the Zettelkasten features - or change them if you like another setup.  
- ```telekasten.lua```  to configure the Zettelkasten plugin and to set the root folder for the Zettelkasten; otherwise it won't work.  
- ```colorscheme.lua```  for activating/deactivating some other colorschemes, the current colorscheme has a light and a dark theme which can be changed by pressing ```Space``` followed by ```t``` followed by either ```d``` for dark or ```l``` for light.  
- ```alpha.lua``` is for the welcome-screen configuration file, where you have to change the Zettelkasten-folder-path, or change the cat picture or add additional entries.  
If you made any changes, you have to restart nvim.  

In the folder ```~/.config/nvim/lua/user/not_needed/``` are several configuration files, which I have been deactivated because it was more
