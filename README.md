# Anupal's dotfiles
Config I use in my setups.

### Install Tmux package manager
- clone tpm repo
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
- setup `.tmux.conf` symlink
- start tmux and press `ctrl`+`b` then `shift`+`i`


### Symlinks
```
# nvim
ln -s $(pwd)/nvim ~/.config/nvim

# starship
ln -s $(pwd)/starship.toml ~/.config/starship.toml

# tmux
ln -s $(pwd)/tmux.conf ~/.tmux.conf
```
