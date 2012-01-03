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
