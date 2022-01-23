#!/bin/sh

# copy config
rm -rf ~/.config/nvim
cp -r ./dev-config/editor/nvim ~/.config

#install nvim
sudo pacman -S neovim

#for ack
sudo pacman -S ripgrep
sudo pacman -S ack

#for npm
sudo pacman -S npm
npm config set proxy http://localhost:7890

#for coc
curl -sL install-node.vercel.app/lts | sudo bash
npm install neovim yarn
