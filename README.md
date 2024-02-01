
# Symbolic link of dotfiles

The folders in this file are symbolically linked to the expected location of the application.
Ex. -s: symlink, -f: replace existing directory

  ln -sf ~/dotfiles/alacritty ~/.config/alacritty

# Alacritty

[shell]  
  program = "/opt/homebrew/bin/bash"  
  args = ['-l']  

The program is the path to the bash binary on the system.  
The args = ['l'] means start with login shell, meaning the shell will look in the .bash_profile for any configurations  



