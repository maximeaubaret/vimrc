#!/bin/sh

# Link the configuration files
echo "Linking .vimrc..."
ln -s $(pwd)/.vimrc ~/.vimrc

echo "Linking .gvimrc..."
ln -s $(pwd)/.gvimrc ~/.gvimrc

echo "Linking colorschemes..."
ln -s $(pwd)/colors ~/.vim/colors

# Install Vundle
echo "Installing Vundle..."
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing Vundle plugins..."
vim +PluginInstall +qall

echo "That's all folks!"
