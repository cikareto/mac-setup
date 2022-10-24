port() {
  lsof -nP +c 15 | grep LISTEN
}

guser() {
  # opt -l use to list current ssh key and git config
  if [ ! -z $1 ] && [ $1 = "-l" ]
  then
    echo -e "\033[1m=== SSH KEY ===\033[0m"
    ssh-add -l
    echo -e "\033[1m=== GIT CONFIG ===\033[0m"
    git config user.name
    git config user.email
    # TODO: edit "username_1" if you have multiple git account
  else
    G_USER=${1:-"username_1"}
    if [ $G_USER = "sgennrw" ]
    then
      git config user.name "sgennrw"
      git config user.email "nt.salisa@gmail.com"
    fi
    ssh-add -D
    ssh-add $HOME/.ssh/id_ed25519_$G_USER
    echo -e "\033[1m=== YOUR CURRENT SSH KEY ===\033[0m"
    ssh-add -l
  fi
}
