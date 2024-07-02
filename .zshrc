
eval "$(/opt/homebrew/bin/brew shellenv)"

  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

set -o vi

alias ls='gls --color=auto'
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
PATH=$PATH:~/.emacs.d/bin:/usr/local/opt/libarchive/bin
export PYTHONPATH="${PYTHONPATH}:/usr/local/opt/notmuch/libexec/lib/python3.10/site-packages"
alias yt-dlp='yt-dlp -f "bestvideo[height<=?1080]+bestaudio/best" --embed-subs --write-auto-subs --sub-lang "en.*"'
alias mangadex-dl='cd ~; source venv/bin/activate; python3 mangadex-dl/mangadex-dl.py -a'
copy-to-kobo() {
    (tar cf - *) | pv | (cd /volumes/koboereader/.nomedia/x64/; tar -xf -)
}
alert() {
    osascript -e 'display notification "Exit Code: '$?'" with title "Task Finished" sound name "Submarine"'
}
tmux-new() {
    tmux new -A -s ${PWD##*/}
}
alias screensaver='open -a ScreenSaverEngine'

# weird vimtex compatibility
export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"

PATH="/Users/yanjunk/.cargo/bin:/Users/yanjunk/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/yanjunk/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/yanjunk/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/yanjunk/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/yanjunk/perl5"; export PERL_MM_OPT;

if [[ -z "$TMUX" ]]; then
else
    tmux source-file ~/.config/tmux/tmux.conf
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yanjunk/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yanjunk/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/yanjunk/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yanjunk/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

bindkey '^R' history-incremental-search-backward
export PATH=/Users/bytedance/.local/bin:$PATH

export GOROOT="$(brew --prefix golang)/libexec"
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOROOT/bin:$GOBIN:$PATH

