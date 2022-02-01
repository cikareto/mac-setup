# go to labs/$1
lb() {
  cd "$HOME/Documents/labs/$1" || return 
}

# open labs/$1 in vscode
clb() {
  code "$HOME/Documents/labs/$1"
}

# go to workspaces/$1
ws() {
  cd "$HOME/Documents/workspaces/$1" || return
}

# open workspaces/$1 in vscode
cws() {
  code "$HOME/Documents/workspaces/$1"
}
