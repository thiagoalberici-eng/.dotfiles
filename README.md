# dotfiles
Personal dot files repository

## Automate this
```sh

### Oh My ZSH
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm 

### Setup dos dotfiles
git clone https://github.com/thiagoalberici-eng/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

### Finalização
cd ~ && mkdir ./dev
```
