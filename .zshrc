# Specify custom history file. This has sensitive information.
HISTFILE=~/.histfile
HISTSIZE=10000000
SAVEHIST=10000000

# `cd` into directories without prepending `cd` to directories
setopt autocd

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alec/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source .zshrc.local

# Set Spaceship ZSH as a prompt
fpath=($fpath "/home/alecgerona/.zfunctions")
autoload -U promptinit; promptinit
prompt spaceship

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
