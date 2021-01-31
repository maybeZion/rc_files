# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

alias ls='ls --sort=extension --group-directories-first'
alias la='ls -a --sort=extension --group-directories-first'
alias hardfought='ssh nethack@hardfought.org'
alias dfort='dwarffortress'
alias cdda='cataclysm-tiles'
alias update-mirrors='sudo pacman-mirrors --fasttrack && sudo pacman -Syyu'
alias spotify='spotifyd && spt'

export PATH="$PATH:/home/ezion/.gem/ruby/2.7.0/bin/"
