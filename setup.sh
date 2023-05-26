#! /usr/bin/env bash

DOTFILES_DIR="~/.dotfiles/"

# A wrapper to easily use the script with others package managers.

function install_package() {
    pacman -S --verbose $1
}

# Ensure git is installed to clone the playbook and dotfiles.

if ! command -v git &> /dev/null
then
    install_package git
fi

# Ensure ansible is installed to use playbook.

if ! command -v ansible &> /dev/null
then
    install_package ansible
fi

# Execute installation process.

git clone https://github.com/hott-henrique/.dotfiles.git $DOTFILES_DIR

ansible-playbook --ask-vault-password $DOTFILES_DIR/setup.playbook.yml

rm -rf $DOTFILES_DIR

