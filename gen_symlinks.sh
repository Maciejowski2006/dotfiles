#sh!/bin/bash

cp ~/.zshrc ~/.zshrc_old
cp ~/.i3/config ~/.i3/config_old
sudo cp ~/.config/polybar/config ~/.config/polybar/config_old
sudo cp ~/.config/polybar/launch.sh ~/.config/polybar/launch_old.sh
cp ~/.config/nvim/init.vim ~/.config/nvim/init_old.vim
cp ~/.Xresources ~/.Xresources_old

rm -rf ~/.zshrc
rm -rf ~/.i3/config
sudo rm -rf ~/.config/polybar/config
sudo rm -rf ~/.config/polybar/launch.sh
rm -rf ~/.config/nvim/init.vim
rm -rf ~/.Xresources

ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.i3/config ~/.i3/config
sudo ln -s ~/dotfiles/polybar/config ~/.config/polybar/config
sudo ln -s ~/dotfiles/polybar/launch.sh ~/.config/polybar/launch.sh
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/.Xresources ~/.Xresources
