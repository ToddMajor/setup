#! /bin/sh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.config/zsh/.zshrc

# open and close terminal to begin setup, or type
# p10k configure
