#!/bin/bash
sudo apt -y remove vim
sudo apt -y autoremove
echo -e '#Debian Backports\ndeb http://deb.debian.org/debian stretch-backports main contrib non-free' | sudo tee /etc/apt/sources.list.d/backports.list 
echo -e '#Visual Studio Code\ndeb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main' | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt -y install \
    vim-gtk \
    zsh \
    wget \
    cmake \
    dnsutils \
    gpg \
    python3-pip \
    python-dev \
    tilix \
    tree \
    code
pip3 install \
    awscli \
    sexpdata \
    websocket-client
git clone git@github.com:r6t/dotfiles.git ~/git/dotfiles
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo chsh -s /usr/bin/zsh $(whoami)
