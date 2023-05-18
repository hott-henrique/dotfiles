#! /usr/bin/env bash

TEMP_DIR="${TEMP:-/tmp/}"

DOTFILES_DIR="$TEMP_DIR/dotfiles/"

# Ensure git to clone the playbook and dotfiles.

if ! command -v git &> /dev/null
then
    pacman -S --verbose git
fi

# Ensure ansible is installed to use playbook.

if ! command -v ansible &> /dev/null
then
    pacman -S --verbose ansible
fi

git clone https://github.com/hott-henrique/.dotfiles.git $DOTFILES_DIR

ansible-playbook $DOTFILES_DIR/setup.playbook.yml

