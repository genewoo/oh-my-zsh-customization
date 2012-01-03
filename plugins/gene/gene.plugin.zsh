psgrep() {
  ps aux | grep "$1" | grep -v grep
}

mvim () {
#    local f
#    for f; do
#        test -e "$f" || touch "$f"
#    done
    open -a macvim "$@"
}

dropb () {
  cd ~/Dropbox/$1
}

_dropb() { _files -W ~/Dropbox -/; }

compdef _dropb dropb

ws () {
  cd ~/Workspaces/$1
}

_ws() { _files -W ~/Workspaces -/; }

compdef _ws ws

alias la='ls -a'
alias gsf='git svn fetch'
alias gsr='git svn rebase'
