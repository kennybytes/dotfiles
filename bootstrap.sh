#!/bin/bash
# Bootstrap Script for my .dotfiles
# Idea was taken from https://github.com/yesmeck/tmuxrc.git

function die()
{
    echo "${@}"
    exit 1
}

git clone --recursive https://github.com/FFAxKenny/dotfiles $HOME/.dotfiles \
    || die "Could not clone the repository to ${HOME}/.dotfiles"

echo "Install successfully."

