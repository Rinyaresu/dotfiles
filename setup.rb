#!/usr/bin/env ruby

# script que eu uso para reeinstalar os meus pacotes, normalmente ele fica no pendrive junto da iso

require 'fileutils'

puts 'Qual é seu nome?'
nome = gets.chomp
puts "Olá #{nome}"

puts "#{nome}, irei atualizar o seu sistema"
system 'sudo pacman -Syyuu'
sleep(2)
puts 'Sistema atualizado'
puts 'Vamos instalar o yay'
sleep(2)
system 'sudo pacman -S --needed base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si'
puts 'Yay instalado'
sleep(2)
puts 'Vamos instalar o seus pacotes'
system 'yay -Syu spotify exa bat fzf fd lazygit ripgrep github-cli postgresql postgresql-utils vim openssh discord obsidian wget curl python-pip'
puts 'Pacotes instalados'
puts 'Agora vamos baixar suas dotfiles'
system 'git clone https://github.com/Rinyaresu/dotfiles.git'
FileUtils.cd('dotfiles') do
  FileUtils.cp_r 'zsh', '/home/rinyaresu/.config', verbose: true
end
system 'rm -rf ~/.zshrc'
system 'rm -rf ~/.gitconfig'
system('ln -s ~/dotfiles/.gitconfig ~/.gitconfig', exception: true)
system('ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc', exception: true)
puts 'Dotfiles baixadas e instaladas'
sleep(2)
puts 'Vamos instalar rust'
system 'curl https://sh.rustup.rs -sSf | sh -s -- -y'
puts 'Agora vamos instalar o Rails'
system 'gem install rails'
sleep(2)
puts 'Vamos instalar gems que o vscode necessita'
system 'gem install solargraph'
system 'gem install rubocop'
