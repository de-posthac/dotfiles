#!/bin/zsh

_exists() { (( $+commands[$1] )) }

export DOTFILES=$('pwd')
NODE='node@14'

install_brew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
    brew install zsh-completions
}

install_scp_env() {
    if ! _exists node; then
        brew install $NODE; 
        install_nodejs_env;
    else
        echo "Node is already installed under " $which(node);
    fi
    if ! _exists yarn; then
        brew install yarn; 
    else
        echo "Yarn is already installed under " $which(yarn);
    fi
    if ! _exists ngrok; then
        brew install yarn; 
    else
        echo "Ngrok is already installed under $('which cf')";
    fi
    if ! _exists cf; then
        brew install cf-cli; 
    else
        echo "Ngrok is already installed under " $('which cf');
    fi
}

install_nodejs_env(){
    npm install license-compatibility-checker -g;
}

echo
echo "Dotfiles installation"
echo
echo "- Path for the installation is set to \e[0;31m$DOTFILES\e[0m."
if _exists brew; then
    echo "- Homebrew is already installed"
else
    echo "- Homebrew is not installed"
fi
echo "- Homebrew NodeJS version $NODE will be used."
echo
echo "Path is set for pathes:\e[0;31m"
echo -e ${PATH//:/\\n}
echo "\e[0m."
echo 

# Install Homebrew if it does not exist or upgrade existing
if ! _exists brew; then
    echo "Do you want to install Homebrew? (y/n)"
    read -q choice
    case "$choice" in 
        y|Y ) install_brew;;
        * )   echo;;
    esac
else
    if _exists brew; then
        brew upgrade;
	brew install zsh-completions;
    if
fi

#Install Homebrew if it does not exist.
if _exists brew; then
    echo "Do you want to set the SAP CAP environment automatically?"
    read -q choice
    case "$choice" in 
        y|Y ) install_scp_env;;
        * ) echo;;
    esac
fi


rm ~/.gitconfig
ln -s $DOTFILES/.gitconfig ~/.gitconfig

rm ~/.gitignore
ln -s $DOTFILES/.gitignore ~/.gitignore

rm ~/.zshrc
ln -s $DOTFILES/.zshrc ~/.zshrc

rm ~/.npmrc
ln -s $DOTFILES/.npmrc ~/.npmrc
