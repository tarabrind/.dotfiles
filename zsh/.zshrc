# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

bindkey -e
autoload -Uz compinit
compinit

# Enable plugins
source ~/.zsh_plugins.sh

# Aliases
alias antibody-update="antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh"
alias vim="nvim"
alias ls="ls --color -h"
alias ll="ls -l"
alias la="ls -la"
alias ip="ip -c"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
