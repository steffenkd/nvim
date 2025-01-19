# nvim
neovim_configuration_for writers_with_zettelkasten


This is a fork and copy paste script kiddie approach which benefitted from the following projects:  
- lunarvim from chris@machine: https://x.com/i/flow/login?redirect_after_login=%2Fchrisatmachine
- lazyvim from folke: https://www.lazyvim.org/  https://github.com/LazyVim/LazyVim
- theena's OVI-write: https://github.com/MiragianCycle/OVIWrite

It is a neovim implementation for writers, bloggers and zettelkasten enthusiasts.  

On Linux install the following packages for a better experience:  
neovim ripgrep ack git nodejs xclip clang fd-find fzf curl

Set up neovim node support:  
npm install -g neovim

I recommend using the following repo to get a "Nerd Font" (Font that supports icons), but it is not necessary.  
[getnf](https://github.com/ronniedroid/getnf)

Clone the nvim repository/folder into /home/.config so it looks like this: /home/.config/nvim/....

Run neovim in the terminal with the command:  
nvim

The first time it will upodate and install several extensions and addons.  
Close and restart after everything has installed and updated.  
Run the command ":checkhealth", to see if there are any packages you forgot to install.  

In the nvim-Folder you will find a file named "init.lua".  
This is the main file, where you can activate or deactivate certain extensions/plugins and which is loading other configuration files like "keymaps" or "colorschemes".  
Activation or deactivation of certain functions can be made by either add or remove the commentary flags "--" in front of a line.  
So if you add two hyphens in front of a line, the function of the line is being converted into a comment and therefore deactrivated.  
If you want to deactivate or activate larger parts like in "colorscheme.lua" you have to put "--[[" (double hyphen and double square brackets) at the beginning of the block of code and "]]--" (double hyphen and double square brackets) at the end of the block of code to indicate it as a comment and therefore deactivate the part.  

The configuration are all stored in "/nvim/lua/user/".  
I highly recommend that you take a look at the "keymaps.lua" to learn about the necessary shortcuts, "telekasten.lua" (Zettelkasten plugin), "colorscheme.lua"  and "alpha.lua" (welcome-screen) configuration files.  
You can change the keymaps (keymaps.lua) if you want, can activate or deactivate other colorschemes (colorschemes.lua).  
You have to customize the root folder for the Zettelkasten folder in the "telekasten.lua" configuration file to make it work.  
You also have to customize the starting/welcoming screen to set the Zettelkasten folder accordingly in the "alpha.lua" file or you can add additionally entries if you want.  
If you made any changes, you have to restart nvim.  


