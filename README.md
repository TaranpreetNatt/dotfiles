# .bash_profile
Copy this manually because the specific company might change what is required in the .bash_profile. Example configuring proxies.

# Important installations

  `brew install fzf`  
  `brew install bat`    
  `brew install ripgrep`  
  `brew install lazygit`  
  `brew install node`  
  `brew install icu4c`  
  `curl -s "https://get.sdkman.io" | bash`  
  `brew install --cask nikitabobko/tap/aerospace`  

  Have to install tpm for tmux to get all the plugins, follow the github page https://github.com/tmux-plugins/tpm

# Symbolic link of dotfiles

The folders in this file are symbolically linked to the expected location of the application.
Ex. -s: symlink, -f: replace existing directory

  `ln -sf ~/dotfiles/alacritty ~/.config/alacritty`  
  `ln -sf ~/dotfiles/nvim ~/.config/nvim`  
  `ln -sf ~/dotfiles/starship ~/.config/starship`  
  `ln -sf ~/dotfiles/.bash_profile ~/.bash_profile`  
  `ln -sf ~/dotfiles/.tmux/.tmux.conf ~/.tmux.conf`  
  `ln -sf ~/dotfiles/aerospace ~/.config/aerospace`  
  `ln -sf ~/dotfiles/sketchybar ~/.config/sketchybar`

# Alacritty

[shell]  
  program = "/opt/homebrew/bin/bash"  
  args = ['-l']  

The program is the path to the bash binary on the system.  
The args = ['l'] means start with login shell, meaning the shell will look in the .bash_profile for any configurations  

# Aerospace

Some needed installations.

```
brew tap FelixKratz/formulae
brew install sketchybar
```

# tmux  
  
Installed tmux plugin manager from https://github.com/tmux-plugins/tpm

# GitHub

Add the following to the ~/.gitconfig file to have neovim resolve merge conflicts.
```
[merge]
  tool = nvimdiff
[mergetool]
  prompt = false
  keepBackup = false
[mergetool "nvimdiff"]
  layout = "LOCAL, MERGED, REMOTE"
```
