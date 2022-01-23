#!/bin/sh

# change the mirror 
sudo pacman-mirrors -c China

# install google-chrome
git clone https://aur.archlinux.org/google-chrome.git
cd ./google-chrome
makepkg -s
sudo pacman -U *.tar.xz
cd ..

# install clash 
wget https://github.com/Dreamacro/clash/releases/download/v1.9.0/clash-linux-amd64-v1.9.0.gz
gzip -d clash*
sudo mv clash* /usr/local/bin/clash
sudo cp clash_cfg.txt /etc/systemd/system/clash.service
sudo systemctl enable clash.service
# sudo systemctl start clash.service

# git proxy setting 
git config --global http.proxy "http://localhost:7890"
git config --global https.proxy "https://localhost:7890"

# install zsh and oh my zsh... 
sudo pacman -Sy zsh
sh ./oh_my_zsh.sh

# clone my config here and use it ... 
git clone https://github.com/Nagisa12321/config_file 
mv ./config_file/.zshrc ~/.zshrc

# install fasd
sudo pacman -S fasd

# install tmux, and copy the oh my tmux... 
sudo pacman -S tmux
mv ./config_file/.tmux.conf ~/.tmux.conf

# install nvim of CC
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/HersonaREAL/dev-config

# setting vim 
wget https://missing-semester-cn.github.io/2020/files/vimrc
cp vimrc ~/.vimrc

# install vscode...
sudo pacman -S code

# install python
sudo pacman -S python-pip 
sudo pacman -S python3
sudo pacman -S python2 

# proxy chains
sudo pacman -S proxychains-ng

# install clangd
sudo pacman -S clang

# include cmake 
sudo pacman -S cmake 

# fcitx
sudo pacman -S fcitx
sudo pacman -S fcitx5-configtool 
sudo pacman -S fcitx-googlepinyin 


