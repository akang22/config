  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

set -o vi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias _vim='vim'
alias vim='nvim'
alias edit='nvim $(fzf)'

vimrg () {
    rg --vimgrep $1 | vim -q /dev/stdin
}

alias branchname='git rev-parse --abbrev-ref HEAD'

alias update='brew update && brew upgrade'
alias restart='exec zsh -l'
PATH=$PATH:~/.emacs.d/bin
