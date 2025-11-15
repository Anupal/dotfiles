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

# alacritty
mkdir -p ~/.config/alacritty
ln -s $(pwd)/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -s $(pwd)/gnome_terminal.toml ~/.config/alacritty/gnome_terminal.toml
```

### Enabling undercurls for your terminal
https://dev.to/anurag_pramanik/how-to-enable-undercurl-in-neovim-terminal-and-tmux-setup-guide-2ld7

- check if you already have enabled it on your terminal: `infocmp -l -x | grep Smulx`
- create a temporary terminfo file: `infocmp > /tmp/${TERM}.ti`
- edit terminfo file add add `Smulx=\E[4:%p1%dm,` right after `smul=\E[4m,`.
- reload terminfo file: `tic -x /tmp/${TERM}.ti`
- verify that it is now enabled: `infocmp -l -x | grep Smulx`
