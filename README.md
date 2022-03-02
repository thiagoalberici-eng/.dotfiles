# dotfiles
Personal dot files repository

## Install Oh My ZSH
```sh
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm 
```

## Setup dotfiles
```sh
git clone https://github.com/thiagoalberici-eng/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

## Create dev dir
```sh
cd ~ && mkdir ./dev
```
