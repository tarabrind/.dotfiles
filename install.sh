#!/bin/sh

# Install programms
apt install \
    stow \
    neovim \
    tmux \
    zsh \
    git \
    curl \
    fzf \
    ripgrep

curl -sfL git.io/antibody | sh -s - -b /usr/local/bin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Stow dotfiles
stow git
stow nvim
stow tmux
stow zsh

# Use zsh as a default shell
chsh -s $(which zsh) $USER

# Bundle zsh plugins 
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# Install neovim plugins
nvim --headless +PlugInstall +qall
