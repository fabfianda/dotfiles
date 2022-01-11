alias srz="source ~/.zshrc"

function :cd() {cd $(z | fzf -q $1 -1 -0 | awk -F ' ' '{print $2}')}
