#!/usr/bin/env bash

sudo pacman -S git zsh

chsh -s $(which zsh)

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

touch ~/.zshrc

echo . $HOME/.asdf/asdf.sh >> ~/.zshrc

asdf plugin-add ruby

asdf list-all ruby && asdf install ruby 3.1.0 && asdf global ruby 3.1.0

ruby setup.rb