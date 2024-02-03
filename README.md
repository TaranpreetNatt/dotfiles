# Important installations

  `brew install fzf`  
  `brew install bat`

  Have to install tpm for tmux to get all the plugins, follow the github page https://github.com/tmux-plugins/tpm

# Symbolic link of dotfiles

The folders in this file are symbolically linked to the expected location of the application.
Ex. -s: symlink, -f: replace existing directory

  `ln -sf ~/dotfiles/alacritty ~/.config/alacritty`
  `ln -sf ~/dotfiles/nvim ~/.config/nvim`
  `ln -sf ~/dotfiles/starship ~/.config/starship`
  `ln -sf ~/dotfiles/.bash_profile ~/.bash_profile`  
  `ln -sf ~/dotfiles/.tmux/.tmux.conf ~/.tmux.conf`  

# Alacritty

[shell]  
  program = "/opt/homebrew/bin/bash"  
  args = ['-l']  

The program is the path to the bash binary on the system.  
The args = ['l'] means start with login shell, meaning the shell will look in the .bash_profile for any configurations  

# tmux  
  
Installed tmux plugin manager from https://github.com/tmux-plugins/tpm


