#!/bin/sh

# Stow dotfiles
stow git
stow nvim
stow tmux
stow zsh

# Use zsh as default shell
sudo chsh -s $(which zsh) $USER

# Bundle zsh plugins 
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# Install neovim plugins
nvim --headless +PlugInstall +qall
