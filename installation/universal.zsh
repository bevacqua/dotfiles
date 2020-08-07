#!/bin/zsh

# ack
ln -sfn $PWD/zsh/.ackrc ~/.ackrc

# zsh, fancy zsh
ln -sfn $PWD/zsh/agnork.zsh-theme ~/.oh-my-zsh/themes/agnork.zsh-theme
ln -sfn $PWD/zsh/config ~/.zshrc
ln -sfn $PWD/zsh/env ~/.zshenv
ln -sfn $PWD/zsh/profile ~/.zprofile

configure-atom

# machine config placeholder
echo "# insert machine-specific configuration here" > ~/.zshrc.user
