#!/bin/zsh

# zsh, fancy zsh
ln -sfn $PWD/zsh/agnork.zsh-theme ~/.oh-my-zsh/themes/agnork.zsh-theme
ln -sfn $PWD/zsh/config ~/.zshrc

# machine config placeholder
echo "# insert machine-specific configuration here" > ~/.zshrc.user
