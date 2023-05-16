#! /bin/sh

sudo apt-get install konsole
sudo update-alternatives --config x-terminal-emulator # hit the one with /usr/bin/konsole

# to get the nightfox_colorscheme
git clone https://github.com/EdenEast/nightfox.nvim.git nightfox
sudo mv ~/nightfox/extra/duskfox/nightfox_konsole.colorscheme /usr/share/konsole/duskfox_konsole.colorscheme
