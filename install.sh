#!/usr/bin/env bash

echo "installing kadev dotfiles..."

stow -vt $HOME tmux
stow -vt $HOME config
stow -vt $HOME user_scripts
stow -vt $HOME kadevrc
