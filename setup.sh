#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    brew install zsh
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "Installing zsh"
    apt install zsh
    zsh --version
    chsh -s $(which zsh)
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

fi
# Copy theme to directory
cp ./dennis.zsh-theme /home/dennischen/.oh-my-zsh/themes/dennis.zsh-theme
