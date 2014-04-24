#!/bin/zsh

echo "[global] Creating symbolic links on directory: $PWD"

# repair symbolic links
ln -sfn $PWD/zsh/agnork.zsh-theme ~/.oh-my-zsh/themes/agnork.zsh-theme
ln -sfn $PWD/zsh/config ~/.zshrc
ln -sfn $PWD/ssh/config ~/.ssh/config

# OS-specific symbolic links
[[ $(uname -s) == 'Linux' ]] && source $PWD/installation/repair-links.ubuntu
[[ $(uname -s) == 'Darwin' ]] && source $PWD/installation/repair-links.osx
