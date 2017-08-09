#!/bin/bash

# Install oh-my-zsh
if [[ -n $( echo $SHELL | grep "zsh" ) ]]; then
    if [[ ! -d "~/.oh-my-zsh" ]]; then
        sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    else
        echo "oh-my-zsh Alredy installed!"
    fi
else
    echo "ZShell not set up. Please make default shell: "
    echo "\t\$ chsh /bin/zsh"
fi

# Install BRP
ln -s ~/.dotfiles/brp/.brprc ~/

# Set up .zshrc
ln -s ~/.dotfiles/zsh/.zshrc ~/

# Set up .nanorc config
ln -s ~/.dotfiles/nano/.nanorc ~/

# Set up Multitial
ln -s ~/.dotfiles/multitail/.multitailrc ~/

# Detect OS

# Run OS Specific Initialization
